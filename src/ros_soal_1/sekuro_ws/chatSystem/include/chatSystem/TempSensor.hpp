#pragma once

#include "chatSystem/Sensor.hpp"

class TempSensor : public Sensor {
    private:
        double baseTemp;
        
    public:
        TempSensor();
        string read() override;
};