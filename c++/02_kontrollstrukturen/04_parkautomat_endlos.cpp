#include <iostream>

using namespace std;


int main() {

    int i_Zeit = 0;
    float f_Betrag = 0.0; // Zahlbetrag
    char c_Taste = 0;
    const int i_Takt = 15; // Zeittakt
    const float f_Einheit = 0.5;
    const int PARKZEIT = 45;

    do {

        i_Zeit = 0;
        f_Betrag = 0.0;
        
        // Bedienungsanleitung
        cout << "Bitte \"p\" oder \"P\" eingeben, falls Sie parken moechten:\n";
        cout << "Maximale Parkzeit: " << PARKZEIT << "\n";
        
        do {
            // Taste einlesen
            cin >> c_Taste;

            
            if (c_Taste == 'p' || c_Taste == 'P') {
 
                // Berechnung
                i_Zeit = i_Zeit + i_Takt;
                f_Betrag = f_Einheit * i_Zeit / i_Takt;

                cout << "Parkzeit: " << i_Zeit << " Zahlbetrag: " << f_Betrag << " EUR\n";
            } else {
            }
        } while ((c_Taste == 'p' || c_Taste == 'P') && i_Zeit < PARKZEIT);
               
        if (i_Zeit > 0) {
            cout << "Parkzeit: " << i_Zeit << " Zahlbetrag: " << f_Betrag << " EUR\n";
        } else {
            cout << "Fehlerhafte Eingabe!\n";
        }
 
    getchar();
    return 0;
  } while (true);
}
