// #include "../include/chatSystem/Sensor.hpp"
#include "chatSystem/Sensor.hpp"

Sensor::Sensor(string name, double minVal, double maxVal)
{
    this->name = name;
    this->minVal = minVal;
    this->maxVal = maxVal;
}

Sensor::~Sensor() {}

double Sensor::addNoise(double value)
{
    double noise = ((rand()%100) - 50) / 50.0;
    double res = value+noise;
    if (res < minVal) res = minVal;
    if (res > maxVal) res = maxVal;
    return res;
}