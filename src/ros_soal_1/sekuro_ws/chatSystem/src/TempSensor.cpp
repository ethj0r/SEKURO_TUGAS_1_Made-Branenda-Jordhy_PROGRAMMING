#include "chatSystem/TempSensor.hpp"

TempSensor::TempSensor() : Sensor("TEMP", -10.0, 80.0), baseTemp(30.0) {}

string TempSensor::read()
{
    // baseTemp += ((rand()%6)-2);
    baseTemp += ((rand()%6)-3);
    if (baseTemp<minVal) baseTemp=minVal;
    if (baseTemp>maxVal) baseTemp=maxVal;

    double val = addNoise(baseTemp);
    return name + ":" + to_string(val);
}