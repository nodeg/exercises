#include <iostream>

using namespace std;


int main() {

    int i_Zeit = 0;
    float f_Betrag = 0.0; // Zahlbetrag
    char c_Taste = 0;
    const int i_Takt = 15; // Zeittakt
    const float f_Einheit = 0.5;

    // Bedienungsanleitung
    cout << "Bitte p eingeben, falls Sie parken moechten: ";

    // Eingabe
    cin >> c_Taste;

    if (c_Taste == 'p') {
        i_Zeit = i_Zeit + i_Takt;
        f_Betrag = f_Einheit * i_Zeit / i_Takt;
         cout << "Parkzeit: " << i_Zeit << " Zahlbetrag: " << f_Betrag;

    } else {
        cout << "Fehler!";
    }

    getchar();
    return 0;
}
