#include "chatSystem/MovingAverageFilter.hpp"

MovingAverageFilter::MovingAverageFilter(int windowSize)
{
    this->windowSize=windowSize;
    this->index=0;
    this->count=0;
    this->buffer.resize(windowSize, 0.0);
}

double MovingAverageFilter::update(double newValue)
{
    buffer[index]=newValue;
    index = (index+1) % windowSize;
    if (count<windowSize) count++;

    double sum = 0.0;
    for (int i=0; i<count; i++) sum+=buffer[i];
    
    return (sum/count);
}