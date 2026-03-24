#pragma once

#include <vector>
using namespace std;

class MovingAverageFilter {
    private:
        vector<double> buffer;
        int windowSize;
        int index;
        int count;
    
    public:
        MovingAverageFilter(int windowSize);
        // ~MovingAverageFilter();

        double update(double newValue);
};