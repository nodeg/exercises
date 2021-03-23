/*****************************************
 * @author: dom
 * @date: 12.02.2020
 *
 ****************************************/

#include <iostream>
#include <cmath>
#include <iomanip>
using namespace std;

// Fkt Prototypen
int menue(void);
float eingabeBetrag(void);
float berechneEndbetrag(float, float, int);
void berechneEndbetrag_jaehrlich(float, float, int);
float berechneAnnuitaet(float, float, int);
void berechneTilgung(float, float, int);

// Globale Variablen
int i_Menuepunkte = 3; // Anzahl der auswählbaren Menüpunkte

int main()
{
    // Var def + init
    float f_Kapital = 0.0;
    float f_Endkapital = 0.0;
    float f_Zinssatz = 0.0;
    int i_Laufzeit = 0;
    int i_Auswahl = 0;
    char c_Nochmal = 'n';


    do {
        i_Auswahl = menue();

        switch (i_Auswahl)
        {
            case 1:
            {
                cout << "Sparplan berechnen\n\n";
                cout << "Bitte geben Sie das Startkapital in Euro ein: ";
                f_Kapital = eingabeBetrag();
                cout << "Bitte geben Sie den Zinssatz in \% ein: ";
                f_Zinssatz = eingabeBetrag();
                cout << "Bitte geben Sie die Laufzeit in Jahren ein: ";
                i_Laufzeit = eingabeBetrag();
                f_Endkapital = berechneEndbetrag(f_Kapital, f_Zinssatz, i_Laufzeit);

                cout << "\nKapital nach " << i_Laufzeit << " Jahren: " << f_Endkapital << " €" << endl;
                break;
            }
            case 2:
            {
                cout << "Sparplan mit jährlicher Ausgabe\n\n";
                cout << "Bitte geben Sie das Startkapital in Euro ein: ";
                f_Kapital = eingabeBetrag();
                cout << "Bitte geben Sie den Zinssatz in \% ein: ";
                f_Zinssatz = eingabeBetrag();
                cout << "Bitte geben Sie die Laufzeit in Jahren ein: ";
                i_Laufzeit = eingabeBetrag();
                cout << "\n\n";

                berechneEndbetrag_jaehrlich(f_Kapital, f_Zinssatz, i_Laufzeit);
                break;
            }
            case 3:
            {
                cout << "Tilgungsplan\n\n";
                cout << "Bitte geben Sie die Kreditsumme in Euro ein: ";
                f_Kapital = eingabeBetrag();
                cout << "Bitte geben Sie den Zinssatz in \% ein: ";
                f_Zinssatz = eingabeBetrag();
                cout << "Bitte geben Sie die Laufzeit in Jahren ein: ";
                i_Laufzeit = eingabeBetrag();
                cout << "\n\n";

                f_Endkapital = berechneAnnuitaet(f_Kapital, f_Zinssatz, i_Laufzeit);
                cout << "Jährliche Annuität: " << f_Endkapital << " €" << "\n\n";

                berechneTilgung(f_Kapital, f_Zinssatz, i_Laufzeit);
                break;
            }
            case -1:
            {
                // fall trough to default
            }
            default:
            {
                cout << "Dieser Menüpunkt ist nicht vorhanden!\n";
                break;
            }
        }
        cout << "\n\nMöchten Sie eine weitere Berechnung durchführen? <J/N> ";
        cin >> c_Nochmal;


    } while (c_Nochmal == 'j' || c_Nochmal == 'J');

    return 0;
}

int menue()
{
    int i_Auswahl = 0;

    cout << "-------------------------------------" << endl;
    cout << "Bitte wählen Sie einen Menüpunkt aus\n\n";
    cout << "<1> Sparplan berechnen\n";
    cout << "<2> Sparplan mit jährlicher Ausgabe\n";
    cout << "<3> Tilgungsplan\n\n";
    cout << "------------------------------------" << endl;
    cout << "Ihre Wahl: ";
    cin >> i_Auswahl;
    cout << "\n";

    if (i_Auswahl > i_Menuepunkte || i_Auswahl <= 0)
    {
        i_Auswahl =  -1;
    }
    return i_Auswahl;
}

float eingabeBetrag()
{
    float f_Betrag = 0.0;
    cin >> f_Betrag;

    return f_Betrag >= 0 ? f_Betrag : abs(f_Betrag);
}

float berechneEndbetrag(float kapital, float zinssatz, int laufzeit)
{
    float f_Endbetrag = kapital * pow(1 + (zinssatz / 100), laufzeit);
    return f_Endbetrag;
}

void berechneEndbetrag_jaehrlich(float kapital, float zinssatz, int laufzeit)
{
    float f_Endkapital = 0.0;

    for (int t = 1; t <= laufzeit; t++)
    {
        f_Endkapital = berechneEndbetrag(kapital, zinssatz, t);
        cout << "Nach dem " << t << ".Jahr:    " << f_Endkapital << " €" << endl;
    }
}

float berechneAnnuitaet(float kreditsumme, float zinssatz, int laufzeit)
{
    float q = 1 + (zinssatz / 100);
    float f_Annuitaet = kreditsumme * (zinssatz/100 * pow(q, laufzeit)) / (pow(q, laufzeit) - 1);
    return f_Annuitaet;
}

void berechneTilgung(float kreditsumme, float zinssatz, int laufzeit)
{
    float q = 1 + (zinssatz / 100);
    float f_Tilgungsanteil = 0.0;
    float f_Zinsanteil = 0.0;
    float f_Gesamtzinsen = 0.0;
    float f_Restschuld = kreditsumme;

    cout << "                  Zinsanteil   Tilgunsanteil   Restschuld\n\n";

    for (int t = 1; t <= laufzeit; t++)
    {
        f_Tilgungsanteil = kreditsumme * ((q - 1) / (pow(q, laufzeit) - 1)) * pow(q, t - 1);

        f_Zinsanteil = kreditsumme * zinssatz / 100 * (pow(q, laufzeit) - pow(q, t - 1)) / (pow(q, laufzeit) - 1);

        f_Restschuld -= f_Tilgungsanteil;
        f_Gesamtzinsen += f_Zinsanteil;

        cout << fixed << setprecision(2) << "Nach dem " << t << ".Jahr:  " << f_Zinsanteil << " €     " << f_Tilgungsanteil << " €       " << f_Restschuld << " €\n";
    }
    cout << "\n\nGesamte Zinsen: " << f_Gesamtzinsen << " €\n\n";
}
