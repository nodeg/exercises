#include <iostream>

using namespace std;

// Fkt Prototyp
double nettoberechnen(double, double);

int main()
{
   // Var def & init
   double dBrutto = 0;
   double dNetto = 0;
   double dProzent = 0;

   // Var einlesen
   cout << "Bitte den Bruttobetrag eingeben: ";
   cin >> dBrutto;

   cout << "Bitte den Prozentsatz eingeben (z.B. 0.19): ";
   cin >> dProzent;

   // Fkt aufrufen
   dNetto = nettoberechnen(dBrutto, dProzent);

   cout << "Der Nettobetrag beträgt: " << dNetto << "\n";

   getchar();
   return 0;
}

double nettoberechnen(double dBrutto, double dProzent)
{
    double dNetto = dBrutto - (dBrutto * dProzent);
    return dNetto;
}
