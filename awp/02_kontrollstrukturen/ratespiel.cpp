#include <iostream>

using namespace std;

int main()
{
int spieler_1_geheime_zahl =0;
int spieler_2 = 0;

 
cout <<"--Ratespiel--"<<endl;
do{
cout << "Spieler 1: Geben Sie Ihre Zahl (zwischen 1 und 10):"<<endl;
cin >> spieler_1_geheime_zahl;  
}while(spieler_1_geheime_zahl<1 ||spieler_1_geheime_zahl>10);

system("clear");
cout <<"--Ratespiel--"<<endl;
cout << "Zahl von Spieler 1 wurde gespeichert"<<endl;

do{
cout << "Spieler 2: Geben Sie Ihre Zahl (zwischen 1 und 10):"<<endl;
cin >> spieler_2;  
}while(spieler_2<1 ||spieler_2>10);

system("clear");
cout <<"--Ratespiel--"<<endl;
cout << "Zahl von Spieler 2 wurde gespeichert"<<endl;




}

