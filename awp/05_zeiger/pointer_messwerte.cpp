#include <iostream>

using namespace std;

float mean_value(float*, int);

int main() {
    int quantity;
    float checkValue;
    float *values = nullptr;

    // input
    cout << "How many values would you like to save? ";
    cin >> quantity;
    values = new float[quantity];

    for (int i = 0; i < quantity; i++) {
        cin >> checkValue;
        if (checkValue < 0) {
            *(values + i) = 0;
        } else {
            *(values + i) = checkValue;
        }
    }

    // output
    cout << endl << "Values: ";
    for (int i = 0; i < quantity; i++) {
        cout << *(values + i) << ", ";
    }

    cout << endl << "Mean value: " << mean_value(values, quantity);

    // clean up
    delete values;
    values = nullptr;
    return 0;
}

// calculates the mean value
float mean_value(float* values, int len) {
    float mean = 0.0;
    for (int i = 0; i < len; i++) {
        mean += *(values + i);
    }
    mean /= len;

    return mean;
}
