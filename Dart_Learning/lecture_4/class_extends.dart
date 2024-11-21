// Abstract class bir temel yapı sağlar ancak bu sınıfın
/// kendisinden nesne oluşturamaz. Türeyen sınıflar ,
/// bu sınıftaki metotları implement etmek zorundadır

void main() {
  final userNormal = User('vb', 15);
  final usersBank = BankUser('name', 155, 233);
  final usrSpecial = SpecialUser('asdas', 12312, 123131, 543);

  userNormal.sayMoneyWithCompanyName();
  usersBank.sayMoneyWithCompanyName();
  usrSpecial.sayMoneyWithCompanyName();

  print(usrSpecial.calculateMoney);
  print(usrSpecial.money);
}

//paralarini görebilmelerini istiyorum benim banka ismimle birlikte

abstract class IUser {
  final String name;
  final int money;

  IUser(this.name, this.money);

  void sayMoneyWithCompanyName() {
    print('Ahmet - $money paraniz vardir');
  }
}

class User extends IUser {
  final String name;
  final int money;

  User(this.name, this.money)
      : super(name,
            money); // super fonksiyonu tanımlanan abstract classda yapılan getter setter methodlarını bu class a da extend etmemizi sağlar
}

class BankUser extends IUser {
  final int bankingCode;

  BankUser(String name, int money, this.bankingCode) : super(name, money);

  void bankSpecialLogic() {
    print(money);
  }
}

class SpecialUser extends IUser {
  final String name;
  final int money;
  final int bankingCode;
  late final int _discount;

  SpecialUser(this.name, this.money, this.bankingCode, int discount)
      : super(name, money) {
    _discount = discount;
  }

  // indirimli fiyatın ne kadar
  int get calculateMoney => money - (money ~/ _discount);
}


// implement ile extend arasındaki en temel ve önemli detay 
// başka bir sınftan extend edilen bir sınıf o sınıfın özelliklerini alır ve
// bu özelliklere ekleme yapılabilir ama bir class ı implement edersek
// o sınıfın özelliklerini alırız ama başka bir özellik ekleyemeyiz
// alınan özellikleri kişiselleştirebiliriz. Bir diğer farklılık ise 
// extend yapısı sadece bir class a yapılabilirken implement yapısı bir çok
// class a yapılabilir.