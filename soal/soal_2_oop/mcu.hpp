#pragma once
// #include "bits/stdc++.h" include gini ga support di macOS pak, maaf
#include <iostream>
#include <vector>
using namespace std;

/*[TODO]: Implementasikanlah class berikut didalam file robot.cpp agar main.cpp dapat dijalankan */
class MCU{
    //[TODO]: Buatlah atribute atribute dalam class ini
    private:
    protected:
        float cpu_speed;
        int memory;
        string os;
        string name;
        int volt;
    public:
        MCU(float cpu_speed,int memory,string os,string name,int volt);
        virtual ~MCU();
        
        virtual void showSpek();
        virtual void nambah_volt(int penambahan_voltase);
        virtual void ganti_os(string new_os);
};

