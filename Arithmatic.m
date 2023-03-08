clc, clear, close all

%% Basic Arithmetic
firstNumber = 6;
secondNumber = 2;
someOtherNumber = 7;

additon = firstNumber + secondNumber;
subtraction = someOtherNumber - secondNumber;
multiplication = firstNumber * someOtherNumber;
division = firstNumber / secondNumber;
powering = firstNumber^secondNumber;

%% Relationonal Operators
lessThan = 1 < 1;
greaterThan = 1 > 2;
equalTo = 1 == 2;
greatherThanOrEqualTo = 1 >= 2;
lessThanOrEqualTo = 1 <= 2;
notEqual = 1 ~= 1;

%% Absolute Values and Sign Check
% abs
abs(-5);
abs(5);
abs(-648493);

% sign
sign(-5);
sign(5);
sign(0);

%% Polynomials, GCD, LCM
% Roots
roots([1, 2, -8, 2]);
roots([3, 0, 4, -2]);
roots([5, 3, 0, 0, 4, 0, 3]);

% Greatest common divisor
gcd(6, 2);
gcd(7, 2);
gcd([2, 4, 6, 15], 2);
gcd([5, 6, 7], [2, 3, 4]);

% Least common mutiple
lcm(9, 27);
lcm(3, 4);
lcm([3, 5, 8, 15], 4);
lcm([5, 6, 7], [2, 3, 4]);

%% Combinations, Permutations, Primes
% Permutations
perms([2, 3, 5, 1, 7, 6])

% Combinations
combnk([2, 3, 4, 5, 6], 4)

% Primes
primes(10)
isprime(10)
isprime(7)