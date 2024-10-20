void main() {
  int money = 5;

  money = money + 1;
  money += 1;
  money++;
  money--;

  String name = "Ahmet";
  String surname = "Koca";

  print(name + surname);

  if (name == "Ahmet") if (name != "Ahmmet") if (name.length <
      5) if (name.length <= 5) if (name.length >= 5) ;

  const int appleMoney = 20;
  const double discount = 2.5;

  int myMoney = 30;

  myMoney = myMoney - (appleMoney ~/ discount);

  print(myMoney);

  // 11 / 2 kalan kac? 1
  print(myMoney % 2 == 0);
  print(myMoney
      .isOdd); // atadığım değişken adından sonra noktaya basarsak bir sürü fonksiyon olduğunu görebiliriz.
  //Fonksiyon detayları yine o içerikte yazar
}
