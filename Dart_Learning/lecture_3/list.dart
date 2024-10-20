void main() {
  // Bir bankaya 10 müsteri gelir bunların paraları 100tl 110 tl 90 tl

  final int money1 = 100;
  final int money2 = 110;

  // 100 den büyük olanlara hoşgeldiniz beyfendi

  if (money1 > 100) {
    print('beyfendi');
  }

  if (money2 > 100) {
    print('aa');
  }

  String name = '';
  // 0,1,2
  List<int> moneys = [100, 110, 500, 200, 300];
  final List<int> newMoneys = [100, 110, 500, 300, 200];

  print('musteri 1 in parasi : ${moneys[0]}');

  // paraları büyük olana göre almak istiyorum

  moneys.sort();
  moneys.add(5);
  moneys.insert(2, 300);
  moneys.reversed.toList().add(60);
  print(moneys);

  //newMoneys = []; // manuel olarak eklenemez

  newMoneys.add(5);
  newMoneys.clear();

  print(newMoneys);
  // newMoneys.reversed.toList();

  // 100 tane musteri yap bunlarıun hepsine sira ile numarasına göre 5 tl ekle

  List<double> customerMoney = List.generate(100, (index) {
    return index + 5;
  });

  print(customerMoney);

  //  Customers 100 30 40 60
  //  35 tlden büyük olanlara burada kredi verebiliriz
  // küçük olanlara bay

  List<int> moneyCustomerNews = [100, 30, 40, 60];

  for (int i = 0; i < moneyCustomerNews.length; i++) {
    print('musteri parası ${moneyCustomerNews[i]}');
    if (moneyCustomerNews[i] > 35) {
      print('kredi hazır');
    } else if (moneyCustomerNews[i] > 0) {
      print('kredi veremeyiz ama bi bakalım');
    } else {
      print('by');
    }
  }

  print('-----------');

  for (int i = moneyCustomerNews.length - 1; i >= 0; i--) {
    print('musteri parası ${moneyCustomerNews[i]}');
    if (moneyCustomerNews[i] > 35) {
      print('kredi hazır');
    } else if (moneyCustomerNews[i] > 0) {
      print('kredi veremeyiz ama bi bakalım');
    } else {
      print('by');
    }
  }
}
