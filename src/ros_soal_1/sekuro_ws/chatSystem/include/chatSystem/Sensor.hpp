#pragma once

#include <iostream>
#include <string>
#include <cstdio>
#include <cstdlib>
using namespace std;

class Sensor {
    protected:
        string name;
        double minVal;
        double maxVal;
        double addNoise(double value);

    public:
        Sensor(string name, double minVal, double maxVal);
        virtual ~Sensor();
        virtual string read() = 0;
        string getName();
};
