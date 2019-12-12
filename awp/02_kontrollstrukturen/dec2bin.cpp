#include <iostream>


using namespace std;


int main() {

    // Variablen definieren und initialisieren
    unsigned int i_zahl = 0;


    cout << "Bitte geben sie eine positive Dezimalzahl ein: ";
    cin >> i_zahl;

    while (i_zahl > 0) {

        cout << i_zahl % 2;
        i_zahl /= 2;
    }
    cout << "\nDas Ergebnis muss rückwärts abgelesen werden.\n";



}
