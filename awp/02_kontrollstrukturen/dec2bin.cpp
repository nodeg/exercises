#include <iostream>


using namespace std;


int main() {

    // Variablen definieren und initialisieren
    unsigned int i_zahl = 0;

    cout << "Umrechnung Dezimal --> Binär\n\n";
    cout << "Bitte geben sie eine positive Dezimalzahl ein: ";
    cin >> i_zahl;
    cout << "Die Binärzahl lautet:\n";

    while (i_zahl > 0) {

        cout << i_zahl % 2;
        i_zahl /= 2;
    }
    cout << "\nDas Ergebnis muss rückwärts abgelesen werden.\n";



}
