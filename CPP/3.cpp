/* Project Euler Problem 3
* The prime factors of 13195 are 5, 7, 13 and 29.
* What is the largest prime factor of the number 600851475143
*/

#include <iostream>
#include <cmath>
using namespace std;


/* Function Prototypes */
int isPrime(int n);
int isDivisor(int a, int b);


/* Main Program */
int main() {
	int test = 13195;
	int start = floor(sqrt(13195) + 1);
	int prime_divisor = 0;
	while (prime_divisor == 0) {
		start--;
		prime_divisor = isPrime(isDivisor(test, start));
	}
	cout << prime_divisor << " is the largest prime factor." << endl;
	return 0;
}


/* Functions */
int isPrime(int n) {
	if (n != 0) {
		for (int i = 1; i <= floor(sqrt(n)); i++) {
			if (n % i == 0) {
				n = 0;
				break;
			}
		}
	}
	return n;
}

int isDivisor(int a, int b) {
	if (a % b != 0) {
		b = 0;
	}
	return b;
}
