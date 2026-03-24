#include "chatSystem/UltrasonicSensor.hpp"

UltrasonicSensor::UltrasonicSensor() : Sensor("ULTRASONIC", 2.0, 400.0), baseDistance(100.0) {}

string UltrasonicSensor::read()
{
    baseDistance += ((rand()%20)-10);
    if (baseDistance<minVal) baseDistance = minVal;
    if (baseDistance>maxVal) baseDistance = maxVal;

    double val = addNoise(baseDistance);
    return name + ":" + to_string(val);
}