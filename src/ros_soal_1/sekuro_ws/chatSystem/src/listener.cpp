#include <string>
#include <sstream>

#include "rclcpp/rclcpp.hpp"
#include "std_msgs/msg/string.hpp"

#include "chatSystem/MovingAverageFilter.hpp"

using namespace std;

class FusionProcessor : public rclcpp::Node {
    private:
        rclcpp::Subscription<std_msgs::msg::String>::SharedPtr subscription;
        MovingAverageFilter UltraFilter;
        MovingAverageFilter IMUFilter;
        MovingAverageFilter TempFilter;

        /**
         * @brief parse "NAMA:nilai"
         * @return nilai as double
         */
        double parseValue(string token)
        {
            int pos = token.find(":");
            string valStr = token.substr(pos+1);
            return stod(valStr);
        }

        /**
         * @brief parse "NAMA:nilai"
         * @return nama
         */
        string parseName(string token)
        {
            int pos = token.find(":");
            return token.substr(0,pos);
        }

        void processCallback(const std_msgs::msg::String &msg)
        {
            string data = msg.data;
            stringstream ss(data);
            string token;

            double ultraVal=0, imuVal=0, tempVal=0;

            /**
             * @brief parse data: "ULTRASONIC:25.3|IMU:45.2|TEMP:31.5"
             */
            while (getline(ss, token, '|'))
            {
                string name = parseName(token);
                double val = parseValue(token);
                if (name=="ULTRASONIC") ultraVal=UltraFilter.update(val);
                else if (name=="IMU") imuVal=IMUFilter.update(val);
                else if (name=="TEMP") tempVal=TempFilter.update(val);
            }

            RCLCPP_INFO(this->get_logger(), "DATA AFTER FILTERING");
            RCLCPP_INFO(
                this->get_logger(),
                "Distance: %.1f cm | Orientation: %.1f deg | Temperature: %.1f C", ultraVal, imuVal, tempVal);

            if (tempVal > 50.0)
                RCLCPP_ERROR(
                    this->get_logger(), "[DECISION] STOP: High temp gng! (%.1f C)", tempVal);
            else if (ultraVal < 20.0)
                RCLCPP_WARN(
                    this->get_logger(), "[DECISION] STOP: Obstacle way to close! (%.1f cm)", ultraVal);
            else if (ultraVal < 50.0)
                RCLCPP_WARN(
                    this->get_logger(), "[DECISION] TURN: Obstacle detected! (%.1f cm)", ultraVal);
            else
                RCLCPP_INFO(
                    this->get_logger(), "[DECISION] GO: SAFE gng!");
        }
        
    public:
        FusionProcessor() : Node("FusionProcessor"), UltraFilter(5), IMUFilter(5), TempFilter(5)
        {
            subscription = this->create_subscription<std_msgs::msg::String> (
                "SensorData", 10, bind(&FusionProcessor::processCallback, this, placeholders::_1)
            );
            RCLCPP_INFO(this->get_logger(), "FUSION PROCESSOR");
            RCLCPP_INFO(this->get_logger(), "Listening on topic: /SensorData");
        }
};

int main(int argc, char *argv[])
{
    rclcpp::init(argc, argv);
    rclcpp::spin(std::make_shared<FusionProcessor>());
    rclcpp::shutdown();
    return 0;
}