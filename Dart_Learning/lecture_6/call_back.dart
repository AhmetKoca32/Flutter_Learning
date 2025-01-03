// ignore_for_file: public_member_api_docs, sort_constructors_first
void main(List<String> args) {
  final user = User(money: 13);

  user.calculateMoney((int result) {
    print(user.money);
  });
}

typedef CalculateCallBack = void Function(
    int data); // Fonskiyonu kalici vie sekilde tanimlamamizi saglar

class User {
  @deprecated // depricated hangi methodun üstüne eklenirse bu class veya objenin bir daha kullanilmasinin tavsiye edilmediği yakin zamanda kaldirilacaği manasina gelir
  int money;
  User({
    required this.money,
  });

  void calculateMoney(CalculateCallBack onComplete) {
    money += 5;
    onComplete(money);
  }
}
