#include <iostream>
using namespace std;
int main ()
{


int iauswahl = 0;
int ihoehe = 0;
char cnocheinbaum = 'x';

  cout << "---Weihnachtsmann---" << endl;
  cout << endl;
  cout << "Welcher soll gezeichnet werden? " <<endl;
  cout << "[1] Stamm "<<endl;
  cout << "[2] Halber Baum "<<endl;
  cout << "[3] Ganzer Baum "<<endl;
  cout << "[4] Ganzer Baum mit Stamm "<<endl;
  cin >> iauswahl;

  cout << "Wie hoch soll der Baum sein?" <<endl;
  cin >> ihoehe;

switch(iauswahl){
  case 1:
    for (int i =0;i <ihoehe; i ++)
    {
    cout <<"x "<< endl;
    }
    break;
  case 2: 
    for (int i =0;i <ihoehe; i ++)
    {
       for (int j =0 ; j<=i;j++)
       {
        cout <<"x ";
       }
    cout <<endl;
    }
    break;
  case 3:
    for (int i =0;i <ihoehe; i ++)
    {
     
       for (int k =(ihoehe-i) ; k>0;k--)
       {
        cout <<"  ";
       }

       
       for (int j =i ; j<=i*2+i;j++)
       {
        cout <<"x ";
       }
       cout <<endl;
    }
    break;
  case 4:
//notfinished yet
    for (int i =0;i <ihoehe; i ++)
    {
       //baum leerzeichen
       for (int k =(ihoehe-i) ; k>0;k--)
       {
        cout <<"  ";
       }

       //baum zeichen
       for (int j =i ; j<=i*2+i;j++)
       {
        cout <<"x ";
       }
       cout <<endl;
    }  

    
    for (int i =0;i <ihoehe/3+1; i ++)
    {
     
       for (int k =(ihoehe-1) ; k>0;k--)
       {
        cout <<"  " ;
       }

       
       for (int j =i ; j<=ihoehe+3;j++)
       {
        cout <<"H ";
       }
       cout <<endl;
    }
    break;


    break;
  default:
    cout << "Kein Baum" <<endl;




}
}
