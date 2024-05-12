/*
import 'dart:io';
import 'dart:math';
bool isPalindrome(int num) {
  String original = num.toString();
  String reversed = original.split('').reversed.join('');
  return original == reversed;
}

void findSixDigitPalindromes() {
  for (int i = 100000; i <= 999999; i++) {
    if (isPalindrome(i)) {
      print(i);
    }
  }
}
void main() {
  print('Các số thuận nghịch có 6 chữ số là:');
  findSixDigitPalindromes();
}
*/
void main() {
  for (int i = 100000; i < 1000000; i++) {
    if (isThuanNghich(i)) {
      print(i);
    }
  }
}

bool isThuanNghich(int n) {
  List<int> digits = [];
  int temp = n;
  while (temp > 0) {
    digits.add(temp % 10);
    temp ~/= 10;
  }
  int len = digits.length;
  for (int i = 0; i < len ~/ 2; i++) {
    if (digits[i] != digits[len - i - 1]) {
      return false;
    }
  }
  return true;
}