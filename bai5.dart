
import 'dart:io';
import 'dart:convert';
bool isPrime(int num) {
  if (num < 2) {
    return false;
  }
  for (int i = 2; i <= (num / 2); i++) {
    if (num % i == 0) {
      return false;
    }
  }
  return true;
}
List<int> listFirstNPrimes(int n) {
  List<int> primeList = [];
  int num = 2;
  while (primeList.length < n) {
    if (isPrime(num)) {
      primeList.add(num);
    }
    num++;
  }
  return primeList;
}

void main() {
  print('Nhap n;');
  int n =int.parse(stdin.readLineSync()!); // Số lượng số nguyên tố cần tìm
  List<int> firstNPrimes = listFirstNPrimes(n);

  print('$n số nguyên tố đầu tiên là:');
  print(firstNPrimes);
}

































