#include <iostream>
#include <iomanip>

using namespace std;

int main() {
    unsigned int i_kandidat1 = 0;
    unsigned int i_kandidat2 = 0;
    unsigned int i_summe = 0;
    float f_prozent1 = 0.0;
    float f_prozent2 = 0.0;

    // Eingabe
    cout << "----------------Wahl-O-Mat----------------\n";
    cout << "Bitte geben Sie die Stimmen fuer Kandidat 1 ein: ";
    cin >> i_kandidat1;
    
    cout << "Bitte geben Sie die Stimmen fuer Kandidat 2 ein: ";
    cin >> i_kandidat2;
    cout << "\n";

    // Verarbeitung
    i_summe = i_kandidat1 + i_kandidat2;
    f_prozent1 = i_kandidat1 * 100.0 / i_summe;
    f_prozent2 = i_kandidat2 * 100.0 / i_summe;

    // Ausgabe
    cout << (char) 201 << "===========================================================" << (char) 187 << "\n"; 
    cout << (char) 187 << "   Das nicht-amtliche Endergebnis der Stichwahl lautet     " << (char) 187 << "\n";
    cout << (char) 187 << "   für Kandidat 1: " << fixed << setprecision(2) << f_prozent1 << " %" << (char) 187 << "\t\n";
    cout << (char) 187 << "   für Kandidat 2: " << f_prozent2 << " %" << (char) 187 << "\t\n";
    cout << (char) 200 << "===========================================================" << (char) 188;
    getchar();
    return 0;
}
