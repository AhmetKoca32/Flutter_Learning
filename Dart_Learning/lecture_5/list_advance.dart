// ignore_for_file: public_member_api_docs, sort_constructors_first
void main(List<String> args) {
  final model = Cars(
      category: CarModels.BMW,
      name: 'BMW 320i',
      money: 3000000,
      isSecondHand: false);

  final carItems = [
    Cars(
        category: CarModels.BMW,
        name: 'BMW 320i',
        money: 3000000,
        city: 'İstanbul'),
    Cars(
        category: CarModels.Audi,
        name: 'Audi S3',
        money: 2000000,
        isSecondHand: false,
        city: 'Ankara'),
    Cars(
        category: CarModels.Mercedes,
        name: 'CLa 180',
        money: 1000000,
        isSecondHand: false),
    Cars(
        category: CarModels.Toyota,
        name: 'Efsane Kasa',
        money: 300000,
        isSecondHand: true,
        city: 'Isparta'),
  ];

  final resultCount =
      carItems.where((element) => element.isSecondHand == true).length;
  print(resultCount); // kaç tane arabanın ikinci el olduğunun çıktısını verir.

  final newCar = Cars(
      category: CarModels.BMW,
      name: 'BMW 320i',
      money: 3000000,
      city: 'İstanbul');
  final newCar2 = Cars(
      category: CarModels.BMW,
      name: 'BMW 320i',
      money: 3000000,
      city: 'İstanbul');

  final isHaveCar = carItems.contains(newCar);
  final isHaveCar2 = carItems.contains(newCar2);

  if (isHaveCar) {
    print('patron elimizde var');
  } else {
    print('Elimizde yok alabiliriz');
  }
  if (isHaveCar2) {
    print('patron elimizde var');
  } else {
    print('Elimizde yok alabiliriz');
  }
}

// Bir arabalar sinifim olacak
// arabalarin model,isim,parasi kesin olacak sehri olmayacak, ikinci el durumu eger musteri soylemezse her urun ikinci el kabul edilecek

// benim 5 tane arabam olucak (List yapisi ile sağlanir)

// benim arabalarimin kaç tanesi ikinci el ? (where elementi ile sağlanir)

// yeni bir araba geldi eğer aynısı varsa kontrol et

class Cars {
  final CarModels category;
  final String name;
  final double money;
  String? city;
  bool isSecondHand;
  Cars({
    required this.category,
    required this.name,
    required this.money,
    this.city,
    this.isSecondHand = true,
  });
}

enum CarModels { BMW, Toyota, Mercedes, Audi }
