void main() {
  int money = 15;
  String userName = "Ahmet";

  //bool => 0,1
  bool isCustomerRich = false;

  print('+money' + userName);

  // if else

  if (money > 10) {
    print("Sen zenginsin");
  } else {
    print("gerekirse simit yeriz");
  }
  money -= 10;

  if (money > 10) {
    print("Sen ekstra zenginsin");
  } else {
    print("Dilencilik de mi yapamıyon");
  }

  // musteri bankaya gelir ve 10 tlsi vardır ve bir sorgu yapar
  // sorgu sonucu 20 tlsi alınır
  // eğper kalan parası 0 dan küçükse bankadan kovuylur
  // eğer adamın parası banking costa yetmiyorsa bankaya almayın

  int newCustomerMoney = 0;
  const int bankingCost = 5;
  const int bankingCostGeneral = 20;

  if (newCustomerMoney > bankingCost) {
    print("Hısgeldiniz beyfendi");
    newCustomerMoney -= bankingCostGeneral;
  } else if (newCustomerMoney > 0) {
    print("beyefendi lütfen sıra alınız");
  } else {
    print('beyfendi lütfen kredinizi ödeyin');
  }

  // bir mağazaya isim verilecek örnek isimler toplanır
  // örnek isimler = ahmet mehmet veli kx
  // mağaza der ki ben sadece karakter uzunluğu 2 ve daha az olanları istiyorum

  final String ahmetCompany = "Ahmet";
  final String mehmetCompany = "Mehmet";
  final String veliCompany = "Veli";
  final String kxCompany = "kx";
  final String xCompany = "x";

  const companyLength = 2;
  String results = "";

  if (ahmetCompany.length > companyLength) {
    results += ahmetCompany;
  }
  if (mehmetCompany.length > companyLength) {
    results += mehmetCompany;
  }
  if (veliCompany.length > companyLength) {
    results += veliCompany;
  }
  if (kxCompany.length > companyLength) {
    results += kxCompany;
  }
  if (xCompany.length > companyLength) {
    results += xCompany;
  }

  if (results.isEmpty) {
    // results.length <= 0
    print("patron bulamadik");
  } else {
    print(results);
  }
}
