#include <cstdlib>
#include <ctime>
#include <memory>
#include <vector>
#include <chrono>

#include "rclcpp/rclcpp.hpp"
#include "std_msgs/msg/string.hpp"

// #include "chatSystem/Sensor.hpp"
// #include "chatSystem/MovingAverageFilter.hpp"
#include "chatSystem/UltrasonicSensor.hpp"
#include "chatSystem/IMUSensor.hpp"
#include "chatSystem/TempSensor.hpp"

using namespace std;

class SensorHub : public rclcpp::Node {
    private:
        rclcpp::Publisher<std_msgs::msg::String>::SharedPtr publisher;
        rclcpp::TimerBase::SharedPtr timer;
        vector<unique_ptr<Sensor>> sensors;

        void timerCallback()
        {
            string data="";
            for (int i=0; i<(int)sensors.size(); i++) {
                if (i>0) data += "|";
                data += sensors[i]->read();
            }

            auto message = std_msgs::msg::String();
            message.data = data;

            RCLCPP_INFO(this->get_logger(), "TX >> %s", data.c_str());
            publisher->publish(message);
        }

    public:
        SensorHub() : Node("sensor_hub")
        {
            publisher = this->create_publisher<std_msgs::msg::String>("SensorData", 10);
            timer = this->create_wall_timer (
                chrono::seconds(2),
                bind(&SensorHub::timerCallback, this)
            );

            sensors.push_back(std::make_unique<UltrasonicSensor>());
            sensors.push_back(std::make_unique<IMUSensor>());
            sensors.push_back(std::make_unique<TempSensor>());

            srand(time(nullptr));

            RCLCPP_INFO(this->get_logger(), "SENSOR HUB ONLINE");
            RCLCPP_INFO(this->get_logger(), "Publishing to topic: /SensorData");
        }
};

int main(int argc, char *argv[])
{
    rclcpp::init(argc, argv);
    rclcpp::spin(make_shared<SensorHub>());
    rclcpp::shutdown();
    return 0;
}