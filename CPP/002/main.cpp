#include <iostream>
using namespace std;

/*
Each new term in the Fibonacci sequence is generated by adding the previous two terms.
By starting with 1 and 2, the first 10 terms will be:
1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
By considering the terms in the Fibonacci sequence whose values do not exceed four million,
 find the sum of the even-valued terms.
 */

int main() {

    int fibNumOne = 1, fibNumTwo = 1, newFibNum = 0, sum;
    const int MAX = 4000000;

    for(newFibNum = 2; newFibNum < MAX; newFibNum = (fibNumOne + fibNumTwo)) {
        cout<<fibNumOne<<endl;
        if (newFibNum % 2 == 0) {
            sum += newFibNum;
        }
        fibNumOne = fibNumTwo;
        fibNumTwo = newFibNum;
    }
    cout<<sum<<endl;

    return 0;
}
