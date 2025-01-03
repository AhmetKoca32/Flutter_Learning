Future<void> main(List<String> args) async {
  print('a');
  // 5 sn bekle araya hiç müşteri girmesin (5 sn boyunca hiç bir işlem yapma)

  await Future.delayed(Duration(
      seconds:
          5)); // eğer await yazmassak başina iki ifadeyi de yazdirir sonra 5 saniye Bekler
  // await yazdiktan sonra yazilan fonksiyonun basliği değisir başina future eklendi burada ve async eklendi
  // async fonksiyonlar kullanmak için future kullanilir

  // Future içinde buna benzer bir sürü işlev vardir
  // await Future.forEach([1, 2, 3, 4, 5, 6], (int element) async {
  //   await Future.delayed(Duration(seconds: 2));
  //   print('islem bitti $element');
  // });

  // Sirali işlemlerde delay ekleme işlemi

  print('hello');

  Future.delayed(Duration(seconds: 2)).whenComplete(() {
    print('hello2');
  });

  print('hello3');

  Future.delayed(Duration(seconds: 1)).whenComplete(() {
    print('hello4');
  });

  // print('ab');
}

// bir servise cevap sonradan gelecek
// matematik zaman alacak
