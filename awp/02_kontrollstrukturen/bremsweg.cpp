#include <iostream>

using namespace std;


int main() {

        // Variablendefinition und -initialisierung
        float f_anhalteweg = 0;
        float f_geschwindigkeit = 0;
        int i_verzoegerung = 0;
        float f_abstand = 0;
        int i_reaktion = 0;
        char c_nochmal = ' ';
        int i_auswahl = 0;

    do
    {
        // Variablen resetten
        f_anhalteweg = 0;
        f_geschwindigkeit = 0;
        i_verzoegerung = 0;
        f_abstand = 0;
        i_reaktion = 0;
        c_nochmal = ' ';
        i_auswahl = 0;

        // clear command line
        system("clear");


        // Bedienungsanleitung ausgeben und Werte einlesen
        cout << "-----------------------------------------------------------\n";
        cout << "Berechnung des Bremsweges\n";
        cout << "Bitte geben Sie die gefahrene Geschwindigkeit in km/h ein: ";
        cin >> f_geschwindigkeit;
        cout << "\nBitte geben Sie die restliche Strecke bis zum Hindernis in m ein: ";
        cin >> f_abstand;
        cout << "\nBitte geben Sie die Reaktionszeit in s ein: ";
        cin >> i_reaktion;
        cout << "--------------------------------------------------------------\n\n";
        cout << "Restlicher Weg bis zum Hindernis: " << f_abstand << " m\n";
        cout << "Die Verzögerungswerte zu folgenden Situationen sind vorhanden:\n\n";
        cout << "1: Nasser Asphalt\n";
        cout << "2: Nasser Beton\n";
        cout << "3: Trockener Asphalt\n";
        cout << "4: Trockener Beton\n\n";

        // Schleife für korrekte Abfrage der Verzögerungswerte
        do
        {
            cout << "Bitte geben Sie einen Menupunkt (zwischen 1 und 4) ein: ";
            cin >> i_verzoegerung;

            i_auswahl = i_verzoegerung;

            // Auswahl der Verzögerungswerte
            switch (i_verzoegerung) {

                case 1:
                {
                    i_verzoegerung = 9;
                    break;
                }
                case 2:
                {
                    i_verzoegerung = 7;
                    break;
                }
                case 3:
                {
                    i_verzoegerung = 5;
                    break;
                }
                case 4:
                {
                    i_verzoegerung = 3;
                    break;
                }
                default:
                {
                    break;
                }
            }
        } while (i_auswahl < 1 || i_auswahl > 4);

        // Berechnung
        f_geschwindigkeit = f_geschwindigkeit /  3.6;
        f_anhalteweg = f_geschwindigkeit * i_reaktion + f_geschwindigkeit * f_geschwindigkeit / (2 * i_verzoegerung);

        if (f_anhalteweg < f_abstand) {
            cout << "\nAnhalteweg: " << f_anhalteweg << "\n";
            cout << "Noch mal Glück gehabt!\n\n";

        } else {
            cout << "\nAnhalteweg: " << f_anhalteweg << "\n";
            cout << "Unfall! Das Tier aus Sicherheitsgründen nicht in den Kofferraum laden!\n\n";

        }

        cout << "Wollen Sie noch eine Berechnung durchführen (j/J)? ";
        cin >> c_nochmal;

    } while ((c_nochmal == 'j') || (c_nochmal == 'J'));

    getchar();
    return 0;
}
