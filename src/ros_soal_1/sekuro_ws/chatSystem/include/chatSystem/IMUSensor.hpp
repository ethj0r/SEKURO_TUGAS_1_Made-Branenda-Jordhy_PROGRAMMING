#pragma once

#include "chatSystem/Sensor.hpp"

class IMUSensor : public Sensor {
    private:
        double baseAngle;
        
    public:
        IMUSensor();
        string read() override;
};