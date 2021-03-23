// author: dom
// date: 10.12.2020

#include <iostream>

using namespace std;

struct MessPunkt
{
    int Zeitstempel;
    int Spannung;
    int Strom;
};

MessPunkt* MessPunkteRandom(int);
void ZeigeMesspunkte(MessPunkt*, int);
void ZeigeMesspunkteIntervall(MessPunkt*, int, int, int);
void AusgabePosFehlmessung(MessPunkt*, int&);
void LoescheMP(MessPunkt*&, int&, int);
int BatterieLadung(MessPunkt*, int);
int BatterieEntladung(MessPunkt*, int);
int BatterieLadebilanz(int, int);


int main() {
    int iLaenge;
    cout << "Eingabe gewuenschte Anzahl Messwerte: ";
    cin >> iLaenge;

    MessPunkt* NeueMessReihe = MessPunkteRandom(iLaenge);
    ZeigeMesspunkte(NeueMessReihe, iLaenge);
    //ZeigeMesspunkteIntervall(NeueMessReihe, 1, 4, iLaenge);


    delete[] NeueMessReihe;
    NeueMessReihe = nullptr;
}

MessPunkt* MessPunkteRandom(int iLaenge) {
    int i;
    MessPunkt* mP = nullptr;
    mP = new MessPunkt[iLaenge];

    if (mP != nullptr) {
        for (i = 0; i < iLaenge; i++) {

            // Modulofunktion, um an jeder 10ten Stelle eine Fehlmessung einzutragen
            if (i % 10 == 0) {
                //// Zeitstempel Aufzeichnung in Sekunden
                mP[i].Zeitstempel = i + 1;
                // Spannung 380000 - 420000 Millivolt
                (mP + i)->Spannung = rand() % 40001 + (380000);
                // Stromstärke Eintrag Fehlmessung --> 999999
                (mP + i)->Strom = 999999;

            } else {
                mP[i].Zeitstempel = i + 1;
                // Spannung 380000 - 420000 Millivolt
                (mP + i)->Spannung = rand() % 40001 + (380000);
                // Stromstärke -9000 - +9000  Milliampere
                (mP + i)->Strom = rand() % 180001 + (-9000);
            }
        }
    }
    return mP;
}

void ZeigeMesspunkte(MessPunkt* mP, int length) {
    for (int i = 0; i < length; i++) {
        cout << "Messpunkt " << i << " Zeitstempel: " << mP[i].Zeitstempel << endl;
        cout << "Messpunkt " << i << " Spannung: " << mP[i].Spannung << endl;
        cout << "Messpunkt " << i << " Strom: " << mP[i].Strom << endl;
        cout << endl;
    }
}

void ZeigeMesspunkteIntervall(MessPunkt* mP, int iStart, int iEnde, int length) {
    if (iEnde < length) {
        for (int i = iStart; i <= iEnde; i++) {
            cout << "Messpunkt " << i << " Zeitstempel: " << mP[i].Zeitstempel << endl;
            cout << "Messpunkt " << i << " Spannung: " << mP[i].Spannung << endl;
            cout << "Messpunkt " << i << " Strom: " << mP[i].Strom << endl;
            cout << endl;
        }
    }
}

int BatterieLadung(MessPunkt* mP, int length) {
    int ladung = 0;
    for (int i = 0; i < length; i++) {
        if (mP[i].Strom > 0) {
            ladung += mP[i].Strom;
        }
    }
    return ladung;
}

int BatterieEntladung(MessPunkt* mP, int length) {
    int entladung = 0;
    for (int i = 0; i < length; i++) {
        if (mP[i].Strom < 0) {
            entladung += mP[i].Strom;
        }
    }
    return entladung;
}

int BatterieLadebilanz(int ladung, int entladung) {
    // +ladung + -ladung
    return ladung + entladung;
}

void AusgabePosFehlmessung(MessPunkt* mP, int& length) {
    for (int i = 0; i < length; i++) {
        if (mP[i].Strom == 999999) {
            cout << "Fehlmessung an Stelle: " << i << endl;
        }
   }
}

void LoescheMP(MessPunkt*& mP, int& length, int index) {
    MessPunkt* mPneu = new MessPunkt[length - 1];

    for (int i = 0; i < length; i++) {
        if (i == index) {
            continue;
        }
        mPneu[i] = mP[i];
    }
    delete[] mP;
    mP = mPneu;
}
