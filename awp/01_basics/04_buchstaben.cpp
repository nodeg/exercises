#include <iostream>

using namespace std;

int main() {
    char c_buchstabe = 0;
    char c_speicher = 0;

    cout << "Einlesen Buchstabe: ";
    cin >> c_buchstabe;

    c_speicher = (int) c_buchstabe;
    c_speicher = c_speicher - 32;
    c_speicher =(char) c_speicher;

    cout << c_speicher;





    getchar();
    return 0;
}
