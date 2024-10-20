void main() {
  // musterinin adini tut
  // musterinin parasını öğren
  // musteriye merhaba diyip parasını söyle
  // bizim bankaya geldiği için parasına 5 tl ekle

  print("Merhaba" + '${25 + 5}');

  int userMoney = 25;
  String userName = "Ahmet";
  userMoney += 5;

  print("Merhaba $userName $userMoney");

  print("----------");
  userMoney -= 10;

  print("paranız değer kaybetti $userMoney");

  double ahmetMoney = 15.2;

  ahmetMoney /= 2;
  print(ahmetMoney);

  userMoney = (userMoney / 2).toInt(); // this is other sample
  userMoney = userMoney ~/ 2;
}
