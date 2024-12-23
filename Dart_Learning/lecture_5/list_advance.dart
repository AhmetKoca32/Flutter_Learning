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

  final resultBmwMore20 = carItems.where((element) {
    return element.category == CarModels.BMW && element.money > 20;
  }).join();

  print(resultBmwMore20);

  final carNames = carItems.map((e) => e.name).join(',');
  print(carNames);

  // eğer bi değişkenin null gelme ihtimali varsa o kalip için try catch bloğu açilir

  bool isHaveCarVolvo = false;
  try {
    final volvoCars =
        carItems.singleWhere((element) => element.category == CarModels.Volvo);
    print(volvoCars.name);
    isHaveCarVolvo = true;
  } catch (e) {
    print('Araba yok');
    isHaveCarVolvo = false;
  } finally {
    print(
        'Abi bu işlem zor oldu bir daha sorma $isHaveCarVolvo'); // bu blok her türlü çalişir.
  }
}

//  **     TASKS      **   ///

// Bir arabalar sinifim olacak
// arabalarin model,isim,parasi kesin olacak sehri olmayacak, ikinci el durumu eger musteri soylemezse her urun ikinci el kabul edilecek

// benim 5 tane arabam olucak (List yapisi ile sağlanir)

// benim arabalarimin kaç tanesi ikinci el ? (where elementi ile sağlanir)

// yeni bir araba geldi eğer aynisi varsa kontrol et (contains yapisi ile equality kullanmak da çoğunlukla gerekli)

// bana bmw olan ve moneysi 20den büyük olan arabalarin isimlerini söyler misin ? (join + where yapisi)

// acaba sadece isimleri yan yana gösterir misin ?  (map yapisi)

// benim elimde volvo var mi kontrol et  (singleWhere yapisi)

// su yeni gelen arabaya var demiştin bunun kaçinci sirada söyler misin

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

  // ilk başta equality methodunun eklemeden çalistirdik elimizde aynı arabadan olduğu halde olmadı gibi bir hata verdi sebebi ise
  // her yeni değişken atandığında bu yeni bir referance tipi ile atanır ve hepsini farkli sayar ama equality metodu ile eklenirse
  // yeni atanan referans tipindeki değişken aynı olursa ayırt edilebilir hale geldi.

  // ** Equality **
  @override
  bool operator ==(covariant Cars other) {
    if (identical(this, other)) return true;

    return other.category == category &&
        other.name == name &&
        other.money == money &&
        other.city == city &&
        other.isSecondHand == isSecondHand;
  }

  @override
  int get hashCode {
    return category.hashCode ^
        name.hashCode ^
        money.hashCode ^
        city.hashCode ^
        isSecondHand.hashCode;
  }
  // **

  // toString methodunu override ederek orijinal kullanımı saf dışı bırakarak class ımıza uygun hale getirdik
  @override
  String toString() {
    // TODO: implement toString
    return '$name - $money';
  }
}

enum CarModels { BMW, Toyota, Mercedes, Audi, Volvo }
