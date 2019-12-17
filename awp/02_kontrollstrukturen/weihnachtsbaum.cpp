#include <iostream>
using namespace std;

int main ()
{
    // Variablen definieren und initialisieren
    int hoehe = 0;
    int auswahl = 0;
    char erneut = ' ';

    do
    {
        // Ausgabe und Einlesen der Werte Höhe und Auswahl
        cout << "--- doms Weihnachtsbaum-Generator ---\n\n";
        cout << "Bitte die Höhe des Baumes eingeben: ";
        cin >> hoehe;

        // Abfangen einer ungültigen Variante
        do
        {
            cout << "Welche Variante soll gezeichnet werden?\n";
            cout << "[1]: Nur Stamm\n[2]: Halber Baum\n";
            cout << "[3]: Ganzer Baum\n[4]: Ganzer Baum mit Stamm\n";
            cout << "[5]: Farbiger Baum\nAuswahl: ";
            cin >> auswahl;

            switch (auswahl)
            {
                case 1:
                    {
                        cout << "- Variante 1 -\n\n";

                        for (int i = 0; i < hoehe; i++)
                        {
                            cout << "\033[1;32mx\033[0m" << "\n";
                        }
                        break;
                    }
                case 2:
                    {
                        cout << "- Variante 2 -\n\n";

                        for (int i = 1; i <= hoehe; i++)
                        {
                            for (int j = 1; j <= i; j++)
                            {
                                cout << 'x' << " ";
                            }
                            cout << "\n";
                        }
                        break;
                    }
                case 3:
                    {
                        cout << "- Variante 3 -\n\n";

                        for (int i = 1; i <= hoehe; i++)
                        {
                            // Einrücktiefe
                            for (int h = hoehe; h > i; h--)
                            {
                                cout << " ";
                            }
                            // Baum malen
                            for (int j = 1; j <= 2 * i - 1; j += 2)
                            {
                                cout << 'x' << " ";
                            }
                            cout << "\n";
                        }
                        break;
                    }
                case 4:
                    {
                        cout << "- Variante 4 -\n";

                        for (int i = 1; i <= hoehe; i++)
                        {
                            for (int h = hoehe; h > i; h--)
                            {
                                cout << " ";
                            }
                            for (int j = 1; j <= 2 * i - 1; j += 2)
                            {
                                cout << 'x' << " ";
                            }
                            cout << "\n";
                        }
                        // Baumstamm, feste Höhe von 4
                        for (int j = 0; j < 4; j++)
                        {
                            for (int h = 0; h < hoehe - 1; h++)
                            {
                                cout << " ";
                            }
                            cout << 'H' << "\n";
                        }
                        break;
                    }
                case 5:
                    {
                        cout << "- Variante 5 -\n\n";

                        for (int i = 1; i <= hoehe; i++)
                        {
                            for (int h = hoehe; h > i; h--)
                            {
                                cout << " ";
                            }
                            for (int j = 1; j <= 2 * i - 1; j += 2)
                            {
                                cout << "\033[1;32mx\033[0m" << " ";
                            }
                            cout << "\n";
                        }
                        // Baumstamm, feste Höhe von 4
                        for (int j = 0; j < 4; j++)
                        {
                            for (int h = 0; h < hoehe - 1; h++)
                            {
                                cout << " ";
                            }
                            cout << "\033[1;33mH\033[0m" << "\n";
                        }

                        break;
                    }
                default:
                    {
                        cout << "Ungültige Auswahl!\n";
                        break;
                    }
            }

        }
        while (auswahl < 1 || auswahl > 5);


        cout << "Noch ein Baum? <j/J>? ";
        cin >> erneut;

    }
    while (erneut == 'j' || erneut == 'J');



    getchar ();
    return 0;

}
