#include <iostream>

using namespace std;


int main() {
    short int  s_vor = 0;
    short int s_zahl = 0;
    short int s_nach = 0;
    unsigned int i_vor;
    unsigned int i_zahl;
    unsigned int i_nach;

    cout << "Zahl vom Datentyp short:\n";
    cin >> s_zahl;

    //cout << " Zahl vom Datentyp int:\n";
    //cin >> i_zahl;

    // Berechnung
    s_vor = s_zahl - 1;
    s_nach = s_zahl + 1;
    //i_vor = i_zahl - 1;
    //i_nach = i_zahl + 1;


    // Ausgabe
    cout << "Vorgaenger short: " << s_vor << "\n";
    cout << "Nachfolger short: " << s_nach << "\n";
    //cout << "Vorgaenger int: " << i_vor << "\n";
   // cout << "Nachfolger int: " << i_nach << "\n";


    getchar();
    return 0;

}
