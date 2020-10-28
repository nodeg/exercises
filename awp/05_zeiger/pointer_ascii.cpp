#include <iostream>

using namespace std;

void print_ascii(char*, int*, int);
void sort_char(char*, int);
void sort_int(int*, int);
int max_value(int*, int);

int main() {
    const int len = 27;
    char values[len];
    char input;

    // fill array with chars a - z
    for (int i = 0; i < len - 1; i++) {
        values[i] = (char) (97 + i);
    }
    values[26] = '\0';

    // should the values be sorted?
    do {
        cout << "Should the values be sorted? (y/n)" << endl;
        cin >> input;
    } while (!(input == 'y' || input == 'n'));

    // save chars in int array
    int iZahlen[len];
    for (int i = 0; values[i] != '\0'; i++) {
        iZahlen[i] = values[i];
    }

    if (input == 'y') {
        sort_int(iZahlen, len);
        sort_char(values, len);
    }

    print_ascii(values, iZahlen, len);

    return 0;
}

// prints chars and their ascii value
void print_ascii(char *chars, int *values, int len) {
    // print values and ascii values
    cout << "Char\tASCII" << endl;

    for (int i = 0; chars[i] != '\0'; i++) {
        cout << chars[i] <<"\t" << values[i] << endl;
    }

    // print highest ascii value
    cout << endl << "Highest Value: " << max_value(values, len);
}

// returns the highest value on an array
int max_value(int *values, int len) {
    int max = values[0];
    for (int i = 0; i < len - 1; i++) {
        if (max < values[i]) {
            max = values[i];
        }
    }
    return max;
}

// reverse bubble sort. Outputs the biggest value first
void sort_int(int *values, int len) {
    bool swapped;
    int length = len - 2;  // Null byte!
    int tmp;
    do {
        swapped = false;
        for (int i = 0; i < length; i++) {
            if (values[i] < values[i + 1]) {
                // swap values
                tmp = values[i];
                values[i] = values[i + 1];
                values[i + 1] = tmp;
                swapped = true;
            }
        }
        length--;
    } while (swapped);
}

// reverse bubble sort. Outputs the biggest value first
void sort_char(char *values, int len) {
    bool swapped;
    int length = len - 1;
    int tmp;
    do {
        swapped = false;
        for (int i = 0; i < length; i++) {
            if (values[i] < values[i + 1]) {
                // swap values
                tmp = values[i];
                values[i] = values[i + 1];
                values[i + 1] = tmp;
                swapped = true;
            }
        }
        length--;
    } while (swapped);
}
