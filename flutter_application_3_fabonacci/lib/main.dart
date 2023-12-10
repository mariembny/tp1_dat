import 'package:flutter/material.dart';
// Calcul récursif de Fibonacci
int fibonacciRecursive(int n) {
  if (n <= 1) {
    return n;
  }
  return fibonacciRecursive(n - 1) + fibonacciRecursive(n - 2);
}

// Calcul itératif de Fibonacci
int fibonacciIterative(int n) {
  if (n <= 1) {
    return n;
  }
  int fib1 = 0;
  int fib2 = 1;
  int fibN = 0;

  for (int i = 2; i <= n; i++) {
    fibN = fib1 + fib2;
    fib1 = fib2;
    fib2 = fibN;
  }

  return fibN;
}

void main() {
  int n = 10; // Remplacez n par la valeur de Fibonacci que vous souhaitez calculer.

  int recursiveResult = fibonacciRecursive(n);
  int iterativeResult = fibonacciIterative(n);

  print('Fibonacci de $n (calcul récursif) : $recursiveResult');
  print('Fibonacci de $n (calcul itératif) : $iterativeResult');
}
