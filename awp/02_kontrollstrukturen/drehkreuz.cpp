#include <iostream>

using namespace std;



int main() {

   cout << "Drehkeuzsteuerung\n";

   for (int i_plaetze = 30; i_plaetze > 0; i_plaetze--) 
   {
       cout << "Noch " << i_plaetze << " verfügbar.\nBitte einsteigen!\n";
       getchar();
       cout << "Signal Drehkreuz\n";
   }

   cout << "Kein freier Platz mehr!\nBitte nicht mehr einsteigen!\n";


}
