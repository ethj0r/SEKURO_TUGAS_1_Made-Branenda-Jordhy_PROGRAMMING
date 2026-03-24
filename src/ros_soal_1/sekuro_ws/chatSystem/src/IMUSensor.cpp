#include "chatSystem/IMUSensor.hpp"

IMUSensor::IMUSensor() : Sensor("IMU", 0.0, 360.0), baseAngle(0.0) {}

string IMUSensor::read()
{
    baseAngle += ((rand()%10)-5);
    if (baseAngle<minVal) baseAngle =minVal;
    if (baseAngle>maxVal) baseAngle = maxVal;

    double val = addNoise(baseAngle);
    return name + ":" + to_string(val);
}