// author: dom
// date: 15.12.2020

#include <iostream>
#include <fstream>
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
void deleteMP(MessPunkt*&, int&, int);
void addMP(MessPunkt*&, int&, MessPunkt);
void einlesenMP(MessPunkt*&, int&, string);
void schreibeMP(MessPunkt *&, int, string);
void loescheAlleFehlmessungen(MessPunkt *&, int&);
void tauscheMP(MessPunkt *, MessPunkt *);
void sortStruct(MessPunkt *&, int);
int BatterieLadung(MessPunkt*, int);
int BatterieEntladung(MessPunkt*, int);
int BatterieLadebilanz(int, int);
int* IndexFehlmessung(MessPunkt*, int, int&i);

int main() {
    int iLaenge;
    cout << "Eingabe gewuenschte Anzahl Messwerte: ";
    cin >> iLaenge;

    MessPunkt* NeueMessReihe = MessPunkteRandom(iLaenge);
    einlesenMP(NeueMessReihe, iLaenge, "read_test");
    //schreibeMP(NeueMessReihe, iLaenge, "write_test");
    ZeigeMesspunkte(NeueMessReihe, iLaenge);
    //sortStruct(NeueMessReihe, iLaenge);
    //ZeigeMesspunkte(NeueMessReihe, iLaenge);

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

void deleteMP(MessPunkt*& mP, int& length, int index) {
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

void addMP(MessPunkt*& mP, int& length, MessPunkt neu) {
    length++;
    MessPunkt* mPneu = new MessPunkt[length];

    for (int i = 0; i < length - 1; i++) {
        //mPneu[i] = mP[i];
        *(mPneu + i) = *(mP + i);
    }
    // some alternative access methods
    //mPneu[i] = neu;
    mPneu[length - 1].Zeitstempel = neu.Zeitstempel;
    mPneu[length - 1].Spannung = neu.Spannung;
    (mPneu + length - 1)->Strom = neu.Strom;

    delete[] mP;
    mP = mPneu;
}

void einlesenMP(MessPunkt*& mP, int& length, string datei) {
    ifstream inStream;
    inStream.open(datei);
    MessPunkt pNeu;

    if (!inStream) {
        cout << "Datei konnte nicht geoeffnet werden";
    } else {
        while (!inStream.eof()) {
            inStream >> pNeu.Zeitstempel >> pNeu.Spannung >> pNeu.Strom;
            addMP(mP, length, pNeu);
        }
        inStream.close();
    }
}

void schreibeMP(MessPunkt*& mP, int length, string datei) {
    ofstream outStream;
    outStream.open(datei);

    if (!outStream) {
        cout << "Datei konnte nicht geoeffnet werden";
    } else {
        for (int i = 0; i < length; i++) {
            outStream << mP[i].Zeitstempel << " " << mP[i].Spannung << " " << mP[i].Strom << "\n";
        }
        outStream.close();
    }
}

void loescheAlleFehlmessungen(MessPunkt*& mP, int& length) {
    for (int i = 0; i < length; i++) {
        if (mP[i].Strom == 999999) {
            deleteMP(mP, length, i);
        }
    }
}

void tauscheMP(MessPunkt* mP1, MessPunkt * mP2) {
    MessPunkt* mpTemp = nullptr;
    mpTemp = mP1;
    mP1 = mP2;
    mP2 = mpTemp;
}

void sortStruct(MessPunkt*& mP, int length) {
    bool swapped;
    int len = length - 2;
    do {
        swapped = false;
        for (int i = 0; i < len; i++) {
            if (mP[i].Strom > mP[i + 1].Strom) {
                tauscheMP(mP, mP++);
                swapped = true;
            }
        }
        len--;
    } while (swapped);
}
