void main() {
  // Bneim bir müşterim var parası var mı yok mu kontrol eder misin

  final int userMoney = 0;
  controlUserMoney(userMoney, 0);

  // Benim bir müşterim daha geldi ona da yapar mısın

  final int user2Money = 5;
  controlUserMoney(user2Money, 0);

  // ya dedi acaba 0 değilde en az 5 tlsi olsun

  final int user3Money = 9;
  controlUserMoney(user3Money, 5);

  // yeni müşteri gelir parası 50 tl
  // parasını dolar yapmak istiyor ve kaç dolar yaptığını merak ediyor

  final newUserMoney = 50;
  int result = convertToDolarStatic(newUserMoney);

  if (result > 0) {}

  // bana bir dolar hesaplama yap eğer ben sana söylemezsem doları 13 ten al

  final newResult = convertToDolar(100, 14);
  final newResult2 = convertToStandartDolar(100);
  final newResult3 = convertToStandartDolar(100, dolarIndex: 16);
  final newResult4 = convertToEuro(userMoney: 150);
  sayHello('Ahmet');
}

void controlUserMoney(int money, int minValue) {
  if (money > minValue) {
    print('para ver');
  } else {
    print('para yok');
  }
}

int convertToDolarStatic(int userMoney) {
  return userMoney ~/ 13;
}

int convertToDolar(int userMoney, int dolarIndex) {
  return userMoney ~/ dolarIndex;
}

int convertToStandartDolar(int userMoney, {int dolarIndex = 14}) {
  return userMoney ~/ dolarIndex;
}

int convertToEuro({required int userMoney, int dolarIndex = 19}) {
  return userMoney ~/ dolarIndex;
}

String sayHello(String name) {
  return 'hello $name';
}
