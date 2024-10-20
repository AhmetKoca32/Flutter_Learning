// ignore_for_file: unused_local_variable

void main() {
  String username = "Ahmet";

  final int bankMoney =
      100; // Bu koddan sonra bu değişkenin içeriği değiştirilemez
  const String bankName =
      "AK Bank"; // final değişkeni ile tanımlanan değişken compile timede değiştirilebilri ama const değişmez

  var username2 = 'Ahmet';
  var username2Money = 15;

  username2Money -= 3;

//---
// Banka name = 'AK bank'
// bank user 1 = "bank1musteri"
//bank user 1 in parası 100.00

// yeni bir müsteri gelecek adi bank2musteri
// yeni bankaya gelenden user1 parasını çıkartıp ekrana göster

  const String bankNameSpecial = "AK bank";
  const user1 = "Bank 1 Musteri";
  const double user1Money = 100;

  const String user2 = "Bank 2 Musteri";
  int user2Money = 500;

  user2Money =
      user2Money - user1Money.toInt(); // double değer int değere dönüştürüldü

  print("User 2 Money : $user2Money");

// Odev 2

//Benim bir halisaham var 100 kisi kapasiteli
// saat 10'da musterii1 gelip 20 kişilik maç yapacak 20 kişi kesin gelecek
// saat 10'da musteri2 gelip bana 50 kisislik yer ayırtacak
// bu islem sonrasında benim halısaha kapasitem kaç kalmıştır?

// Hint
//int sum = musteri1-musteri2
//print total(const) - sum

  const int total = 100;

  const int musteri1 = 20;
  int musteri2 = 50;

  int sum = musteri1 + musteri2;

  int result = total - sum;

  print(" Saat 10'da kalan kapasite :  $result");
}
