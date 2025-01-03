void main(List<String> args) {
  final user = _User('Ahmet', age: 21);

  // musterinin yasi 18den küçük mü kontrol et

  // if((user.age ?? 10) < 18){} // Bu yapıyı zaten öğrenmiştik age değişkeni null da gelebileceği için önlem aldık

  if (user.age is int) {
    if (user.age! < 18) {
      // Bu yapıda bir yanlış yok ama dart dilinin yapısı yüzünden ünlem koyup force ile çalıştırmalıyız
      print('Evet küçük');
      user.updateMoneyWithString('TR');
    } else {
      user.updateMoneyWithNumber(15);
    }
  }

  // Kullanicilerin parsi var ama paranin tipi degisken
  // parasi olan adamin o parametresi bir isim de olabilir bir değer de
  // tr yazacak ya da oraya 15 yazabilir. Bu durumda ise değişkeni dynamic olarak tanimlariz

  // Ekranda göster

  final _newType = user.moneyType is String ? (user.moneyType as String) : "";

  print(_newType +
      'A'); // dynamic kullanımda bu şekil yapılabilir ama eğer değer Sting değil de int yollanirsa bu patlar
  // bu hatayı da yukarıda bahsedilen _newtype değişkeni yöntemi ile çözebiliriz

  // -------------------------------------------------------------

  int money1 = 50;
  int money2 = 50;
  print(money1 == money2);

  final moneyBank1 = Bank(50, '12');
  final moneyBank2 = Bank(50, '12');
  print(moneyBank1 == moneyBank2);
  // Bu ikisinin birinin true birinin false çıkmasının sebebi
  // classlar referance olduğu için normal değer atamadan farklı değer döndürür

  // musteri bank sınıfından iki kisinin sonucunu toplayıp ekrana yazdırsın
  // print(moneyBank1 + moneyBank2); // Bu kod çalışmadı çünkü tanımlanan operatör istediğimiz gibi tanımlanmadı yani + operatörü tanımlanmadı

  // Bank classında operatör tanımlandıktan sonra
  print(moneyBank1 + moneyBank2); // Bu kod çalışır çünkü operatör tanımlandı
  // özelleştirilmiş toString kullanımı
  print(moneyBank1.toString());

  // Benim bankama gelen müşterilerimin id si aynı olanları aynı müşteri say
  print(moneyBank1 == moneyBank2);

  //Diğer bankadan bir modül aldık bunu ekleyip müşterinin parasını sorgular mısın (mixin ile yapıldı)

  //musteri adamın parasına 10 tl ekle ekrana döndür, adamin id sini 1 arttır sonra adını ahmet yap

  moneyBank1.money += 10;
  print(moneyBank1);

  moneyBank1
    ..money += 10
    ..name = "Ahmet"
    ..updateName(
        "AhmetKoca"); // Bu yapinin adina cascade notation denir ve tek seferde birden fazla parametreyi değiştirmemizi sağlar

  print(moneyBank1);
}

class _User {
  final String name;
  int? age;

  dynamic moneyType;

  _User(this.name, {this.age});

  void updateMoneyWithString(String data) {
    moneyType = data;
  }

  void updateMoneyWithNumber(int number) {
    // dynamic değişkenler bu şekilde kullanilir.
    // dezavantaj olarak ise ilk olarak hangi fonksiyon çalişirsa belleğe o tip değişken olarak atanir

    moneyType = number;
  }
}

class Bank with BankMixin {
  int money;
  final String id;
  String? name;

  Bank(this.money, this.id);

  int operator +(Bank newBank) {
    return this.money + newBank.money;
  }

  void updateName(String name) {
    this.name = name;
  }

  @override
  String toString() {
    return super.toString() + 'Ahmet';
  } // Normalde bütün classlarımızın için toString fonksiyonu bulunduğu için sonradan eklenen bi toString fonksiyonu override edilmiş olur ve değişiklik yapılabilir

  bool operator ==(Object object) {
    return object is Bank && object.id == id;
  } // Bu custom operator girildikten sonra yukarda karşılaştırılıp false dönen değer bu fonksiyondan sonra doğru bir şekilde true döner

  @override
  void sayBankHello() {
    calculateMoney(money);
  }
}

mixin BankMixin {
  // mixinlerin classlardan farkı mixinler methodlar(drive(),park()) için kullanılır, classlar her türlü yapı için kullanılabilir stateler de dahil mixinlerde state(color,speed) kullanılmaz
  void sayBankHello();

  void calculateMoney(int money) {
    print(money);
  }
}
