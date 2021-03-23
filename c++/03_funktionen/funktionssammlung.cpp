#include <iostream>

using namespace std;

//////////////////////////////////////
//  Funktionssammlung der DataSol   //
//////////////////////////////////////

//Prototypen

//quadriere(): quadriert eine beliebige Zahl
float quadriere(float x);

//naechste(): gibt die nächste Ganzzahl zurück.
int naechste(int x);

//kleinste(): nimmt zwei Zahlen entgegen und gibt die kleinste davon zurück
int kleinste(int x, int y);

//groesste(): nimmt zwei Zahlen entgegen und gibt die größte davon zurück
int groesste(int x, int y);

//istGerade(): nimmt eine Ganzzahl entgegen und gibt mittels eines sinnvollen Datentyps zurück,
//ob die Zahl gerade ist oder nicht.
bool istGerade(int x);

//istUngerade(): siehe istGerade(), aber für ungerade Zahlen
bool istUngerade(int x);

//runde(): rundet eine float-Variable auf oder ab und gibt ein int zurück
int runde(float x);

//trennlinie(): gibt auf der Kommandozeile eine Trennlinie mit der gewünschten Länge aus (z.B. für Menüs)
//Beispiel: trennlinie (12) => Ergebnis: ============
void trennlinie(int x);

//menueauswahl(): Fragt den Benutzer, welchen Menüpunkt er auswählen möchte und gibt das Ergebnis als int zurück
int menueauswahl(void);

///////////////////
// Hauptprogramm //
///////////////////
int main()
{
    int x = 0;
    int y = 0;
    int menu = 0;

    //Hier Funktionen testen
    cout << "Bitte Zahl 1 (int) eingeben: ";
    cin >> x;
    cout << "Bitte Zahl 2 (int) eingeben: ";
    cin >> y;

    cout << "Es wird immer mit Zahl 1 gerechnet!\n\n";
    //cout << "Ergebnis quadriere(): " << quadriere(x) << endl;
    cout << "Ergebnis naechste(): " << naechste(x) << endl;
    cout << "Ergebnis kleinste(): " << kleinste(x, y) << endl;
    cout << "Ergebnis groesste(): " << groesste(x, y) << endl;
    cout << "Eregebnis runde(): " << runde(x) << endl;
    cout << "Ergebnis istGerade(): " << istGerade(x) << " (0 = false, 1 = true) " << endl;
    cout << "Ergebnis istUngerade(): " << istUngerade(x) << endl;
    cout << "Trennlinie()" << endl;
    trennlinie(x);
    cout << "\n Menuauswahl() \n";
    menu = menueauswahl();
    cout << "Menuauswahl: " << menu << endl;
    return 0;
}


/////////////////////////////////////////////////////////////////
// Definieren Sie ab hier die oben deklarierten Funktionen //
/////////////////////////////////////////////////////////////////
float quadriere(float x){
    float f_Quadrat = 0;
    f_Quadrat = x*x;
    return f_Quadrat;
}

int naechste(int x)
{
    return x + 1;

}

int kleinste(int x, int y)
{
    return (x > y) ? y : x;
}

int groesste(int x, int y)
{
    return (x > y) ? x : y;
}

int runde(float x)
{
    return (int) x;
}

bool istGerade(int x)
{
    return x % 2 == 0 ? true : false;
}

bool istUngerade(int x)
{
    return !istGerade(x);
}

void trennlinie(int x)
{
    for (int i = 0; i <= x; i++)
    {
        cout << "=";
    }
}

int menueauswahl(void)
{
    int menu = 0;
    cout << "Welcher Menüpunkt soll ausgewählt werden? ";
    cin >> menu;
    return menu;
}
