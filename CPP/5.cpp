/* Project Euler Problem 5
* Find the smallest number that is divisible by all numbers from 1-20
*/

#include <iostream>
using namespace std;

/* Function Prototypes */
int isDivisible(int n);


/* Main Program */
int main() {
	int test = 2520;
	int found = 0;
	while (found == 0) {
		test += 2;
		found = isDivisible(test);
	}
	cout << test << " is divisible by all numbers from 1-20." << endl;
	return 0;
}


/* Functions */
int isDivisible(int n) {
	int found = 1;
	for (int i = 2; i<= 20; i++) {
		if (n % i != 0) {
			found = 0;
			break;
		}
	}
	return found;
}
