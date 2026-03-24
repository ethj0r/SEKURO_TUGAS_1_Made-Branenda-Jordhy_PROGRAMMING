#pragma once

#include "chatSystem/Sensor.hpp"

class UltrasonicSensor : public Sensor {
    private:
        double baseDistance;

    public:
        UltrasonicSensor();
        string read() override;
};