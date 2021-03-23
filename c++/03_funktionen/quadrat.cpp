#include <iostream>

using namespace std;

void quadrat(int, int&, int&);

int main()
{
    int seitenlaenge = 0;
    int umfang = 0;
    int flaeche = 0;

    cout << "Bitte geben sie die Seitenlänge des Quadrates ein: ";
    cin >> seitenlaenge;
    cout << "\n\n";

    quadrat(seitenlaenge, flaeche, umfang);
    
    return 0;
}

void quadrat(int seitenlaenge, int& flaeche, int& umfang)
{
    flaeche = seitenlaenge * seitenlaenge;
    umfang = 4 * seitenlaenge;

    cout << "Flaeche: " << flaeche << ", Umfang: " << umfang << endl;
}
