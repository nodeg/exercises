// exercise 4

#include <iostream>

using namespace std;

void mean_value(float*, int);
void add_value(float*&, int&, int);

int main() {
    int input = 0;
    int length = 0;
    float* values = nullptr;

    // input
    cout << "Please input your values. To abort input 0!" << endl;
    for (int i = 0;; i++) {
        cout << "Input: ";
        cin >> input;
        if (input == 0) {
            length = i;
            break;
        }
        add_value(values, length, input);
    }
    cout << endl;
    mean_value(values, length);

    // cleanup
    delete[] values;
    return 0;
}

// calculate mean value
void mean_value(float* values, int len) {
    float mean = 0.0;
    for (int i = 0; i < len; i++) {
        if (values[i] != 0) {
            mean += *(values + i);
        }
    }
    mean /= len;
    cout << "Mean value: " << mean;
}

// add new value
void add_value(float*& values, int& length, int input) {
    float* newValues = nullptr;
    length++;
    newValues = new float[length];

    for (int i = 0; i <= length - 2; i++) {
        newValues[i] = values[i];
    }
    newValues[length - 1] = input;
    delete[] values;
    values = newValues;
}
