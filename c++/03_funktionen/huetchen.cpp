#include <iostream>
#include <ctime>

using namespace std;

//Funktionsprototypen
void TauscheInhalt(bool& bFB1, bool& bFB2);

int main()
{


// Variablendefinitionen
bool bHB1 = 0;
bool bHB2 = 0;
bool bHB3 = 0;
int iZufallszahl = 0;
char cnochmal;
cout << "Huetchenprogramm" << endl << endl;

// Zufallszahlengenerator initialisieren
srand((unsigned) time(NULL)); // randomize();

do
{
    //Eingabe
    cout << "==========================================================" << endl;
    cout << "Das Hüttchenspiel und der Zufallsgenerator wird gestartet:" << endl;
    cout << "==========================================================" << endl;
    cout << endl << endl;
    
    //Hütchen werden belegt
    bHB1 = 0;
    bHB2 = 0;
    bHB3 = 0;
    iZufallszahl = rand() % 3;

    switch (iZufallszahl)
    {
        case 0: bHB1 = 1;break;
        case 1: bHB2 = 1;break;
        case 2: bHB3 = 1;
    }

    // Ausgabe1 Hütchen
    cout << endl << "\t" << bHB1 << "   " << bHB2 << "   " << bHB3 << endl; 

    // Tausch links
    TauscheInhalt(bHB1,bHB2);
    // Tausch rechts
    TauscheInhalt(bHB2,bHB3);
    // Tausch außen
    TauscheInhalt(bHB1,bHB3);

    cout << endl << "1. Tausch der beiden linken Hütchen" << endl;
    cout <<  "2. Tausch der beiden rechten Hütchen" << endl;
    cout <<  "3. Tausch der beiden äußeren Hütchen" << endl;
    cout << endl << "Ausgabe" <<endl;

    // Tastatureingabe
    getchar();
    getchar();
    
    cout << "Inhalt Becher1:   " << bHB1 << endl;
    cout << "Inhalt Becher2:   " << bHB2 << endl;
    cout << "Inhalt Becher3:   " << bHB3 << endl << endl << endl;

    cout << "Wollen Sie nochmal? (J/N) ";
    cin >> cnochmal;
    cout << endl;

} while (cnochmal == 'j'||cnochmal == 'J');

return 0;
}


// Funktionsdefinitionen
void TauscheInhalt(bool& bFB1, bool& bFB2)
{
    bool bFBx = bFB1;
    bFB1 = bFB2;
    bFB2 = bFBx;
}



