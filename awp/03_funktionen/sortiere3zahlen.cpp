/*
 * @author: dom
 * @date: 19.02.2020
 *
 * sortiere3zahlen.cpp
 */



#include <iostream>

using namespace std;


// Funktionsprototypen
void TauscheInhalt(int&, int&);
void SortiereDreiZahlen(int&, int&, int&);

int main()
{

    // Variablendefinitionen
    int izahl1 = 0;
    int izahl2 = 0;
    int izahl3 = 0;
    char cnochmal = 'n';


    do
    {
        //Eingabe
        cout << "========================" << endl;
        cout << "Sortieren dreier Zahlen" << endl;
        cout << "========================" << endl;
        cout << endl << endl;

        cout << "Geben Sie die erste Zahl ein: ";
        cin >> izahl1;
        cout << endl;
        cout << "Geben Sie die zweite Zahl ein: ";
        cin >> izahl2;
        cout << endl;
        cout << "Geben Sie die dritte Zahl ein: ";
        cin >> izahl3;
        cout << endl;

        // Verarbeitung
        SortiereDreiZahlen(izahl1, izahl2, izahl3);

        // Ausgabe
        cout << "Sortierte Ausgabe    "  << endl;
        cout << "================="  << endl;
        cout << "Inhalt Zahl1:   " << izahl1 << endl;
        cout << "Inhalt Zahl2:   " << izahl2 << endl;
        cout << "Inhalt Zahl3:   " << izahl3 << "\n\n\n";

        cout << "Wollen Sie nochmal? (J/N) ";
        cin >> cnochmal;

    } while (cnochmal == 'j' || cnochmal == 'J');
}

// Funktionsdefinitionen
void TauscheInhalt(int& iz1, int& iz2)
{
    int tmp;
    tmp = iz1;
    iz1 = iz2;
    iz2 = tmp;
}


void SortiereDreiZahlen(int& iz1, int& iz2, int& iz3)
{
    if (iz2 > iz3)
    {
        TauscheInhalt(iz2, iz3);
    }
    if (iz1 > iz2)
    {
        TauscheInhalt(iz1, iz2);
        if (iz2 > iz3)
        {
            TauscheInhalt(iz2, iz3);
        }
    }
}
