#include <iostream>


using namespace std;


int main() {
    
    // Variablen anlegen
    int i_schaltjahr = 0;
    bool b_sj = false;
    
    // Einlesen
    cout << "Bitte jeben Sie die Jahreszahl ein:\n";
    cin >> i_schaltjahr;

    // Verarbeitung
    if (i_schaltjahr % 4 == 0) {
        if (i_schaltjahr % 100 == 0) {
            if (i_schaltjahr % 400 == 0) {
                b_sj = true;
             } else {
                 b_sj = false;
             }
        } else {
            b_sj = true;
        }
    } else {
        b_sj = false;
    }

    // Ausgabe
    cout << "Das Jahr " << i_schaltjahr << " ist ein Schaltjahr: " << b_sj << " (1 = true, 0 = false)";


    getchar();
    return 0;
}
