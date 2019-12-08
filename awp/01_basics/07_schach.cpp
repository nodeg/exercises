#include <iostream>
#include <math.h>

using namespace std;


int main() {

    unsigned int i_felder = 0;
    double d_masse_alle = 0;
    float f_masse = 0;
    float f_gewicht = 25;
    unsigned int i_feld = 0;

    cout << "Bitte die Anzahl der Felder eingeben: ";
    cin >> i_felder;

    // Berechnung
    i_feld = i_felder * i_felder;
    f_masse = f_gewicht * pow(2, i_feld) / 1000000;
    d_masse_alle = pow(f_gewicht, i_feld) / 1000000;
    
    cout << "Das Brett ist insgesamt " << i_feld << " Feld(er) gross.\n";
    cout << "Das Gewicht eines Reiskorns auf Feld " << i_feld << " betraegt " << f_masse << " kg.\n";
    cout << "Das Gewicht aller Reiskoerner auf Feld " << i_feld << " betraegt " << d_masse_alle << " kg.";

    getchar();
    return 0;
}


