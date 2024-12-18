import 'model/user_model.dart';
import 'model/user_model_2.dart';

void main() {
  // musteri adı var , parası var, yasi var bla bla

  final int customerMoney = 50;
  final String customerName = "ahmet";
  final int customerAge = 13;
  final String customerCity = "Isparta";

  // bu musterinin yası 10 dan buyukse islem yapalim

  controlCustomerAge(customerAge);

  // yeni musteri geliyor yine aynı alanlar

  final int customerMoney2 = 92;
  final String customerName2 = "mehmet";
  final int customerAge2 = 9;
  final String customerCity2 = "Burdur";

  controlCustomerAge(customerAge2);

  // unutmusuz musteri sehirlerini

  // ---

  // ya ben musterileri gruplasam, yeni bir kumelesem ve bunlar aynı özellikleri aynı şekilde bana gösterebilse
  // bu durum için class yapısı oluşturacağız ama class yapısını direkt oluşturamamamızın sebebini açıklıcam

  // int newMoney;
  // print(newMoney); // bu kod hata verir çünkü newMoney değişkenine bir değer atanmadi boş gelme ihtimalini de kontrol etmemiz lazım. O durumu nasıl kontrol edeceğimizi de aşağıda göstereceğim

  int? newMoney;
  print(newMoney);

  // yukarida gösterdiğim şekilde de çalişir ama eğer print ederken bir değer eklemek istersek yine hata verir çünkü degiskenin bos gelme ihtimali de vardir
  // bu durumu da aşağidaki şekilde kontrol edeceğiz

  // int? newMoney2;
  // print(newMoney2! + 10);

  // sonuna ünlem konulmasi demek dolu geleceğinin garantisini vermek demektir. Ama buna rağmen yine de boş gelirse program crash yer
  // bu durumun da çözümü var

  int? newMoney3;
  if (newMoney3 != null) {
    print(newMoney3 + 105);
  } else {
    print(10 + 10);
  }

  // bankaya 3 tane musteri gelir birinin 100 tlsi var diğerinin hesabı hiç yok diğerinin 0 tlsi var
  // hesabi olmayana gelin hesap acalim diyelim, 0tlsi olani kov, 100 tlsi olana hosgeldim deyin

  // yeni bir method olsun bu methodda hesabı olmayanları ve parası olmayanları yok saysin

  List<int?> customerMoneys = [100, null, 0];
  //  buradaki soru işareti belirtilen değişken türü disinda da türler gelebilri demektir

  for (var item in customerMoneys) {
    if (item != null) {
      if (item > 0) {
        print('beyefendi');
      } else {
        print('byy');
      }
    } else {
      print('haydi hesap açalim');
    }

    // -----------
    // Eğer controlMoney(item) null dönerse, result false olarak ayarlanır; null değilse, true olarak ayarlanır.
    bool result = controlMoney(item) == null ? false : true;

    print(result);
  }
  print('-----------------' * 10);
  int customerMoneyX = 15;
  User user1 = User('ak', 300, age: 20, city: 'Isparta', id: '1234');
  // User user2 = User('df', 24, null, null);
  final user3 = User('df', 24,
      age: 18,
      id: '12'); // koda süslü parantez eklendikten sonra böyle bir geliştirme geldi yani değişkeni tanımlamdan da nullable olduğunu gösterebiliriz

  print(user1.name);

  print(user3.userCode);

  // müsteri son gelen kisinin citysine göre islem yapicak eğer istanbul ise

  if (user3.city == null) {
    print('kullanici sehir bilgisi girmemis');
  } else {
    if (user3.city!.isEmpty) {
      print('okoko');
    }

    if (user3.city == 'istanbul') {
      print('tebrikler kazandiniz');
    }
  }

  // Müsteri idsi 12 olana indirim yap
  if (user3.isSpecialUser('12')) {
    user3.money += 5;
    print('Para eklendi');
    user3.isEmptyId;
  }

  // Eğer User2 classından final bir değişkenin değiştirmesini yapamaya çalışırsa
  // kod hata verecektir aynı classın içindeyken hata vermez ama crash verir
  User2 newUser2 = User2('ak', 20);
  newUser2.money += 10;
  newUser2.money = 0;

  print(newUser2.toString());
}

void controlCustomerAge(int value) {
  if (value > 10) {
    print('alisveris yapabilirsin');
  } else {
    print('alisveris yapamazsin');
  }
}

int? controlMoney(int? money) {
  if (money != null && money > 0) {
    return money;
  }

  // dartta null otomatik döner zaten ayrı bir daha girmeye gerek yok

  // if (money == null || money == 0) {
  //   return null;
  // }
}

// late ne işe yarar ?
// Dart dilinde late anahtar kelimesi, bir değişkenin geç bir zamanda (programın başında değil, daha sonra)
// ilk değerini alacağını belirtir. Bu, özellikle final veya const anahtar kelimeleri
// ile birlikte kullanıldığında yararlıdır çünkü normalde final değişkenler tanımlandıkları anda bir değer almak
// zorundadır. late, değişkene daha sonra değer atama esnekliği sağlar.


