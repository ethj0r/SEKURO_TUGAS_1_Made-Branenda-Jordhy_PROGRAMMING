#pragma once
// #include "bits/stdc++.h" include semua seperti ini tidak support di macOS.
#include <iostream>
#include <vector>
#include <map>
using namespace std;

/*[TODO]: Implementasikanlah class berikut didalam file robot.cpp agar main.cpp dapat dijalankan */
class Core_MCU{
    private:
        //[TODO]: Buatlah atribute atribute dalam class ini
        string os;
        float cpu_speed;
        int memory;
        string nama;
        int volt;
    public:

        Core_MCU(float cpu_speed,int memory,string os,string nama,int volt);
        ~Core_MCU();

        void showSpek();
        void nambah_volt(int penambahan_voltase);
        void ganti_os(string new_os);

        string get_os();
};

