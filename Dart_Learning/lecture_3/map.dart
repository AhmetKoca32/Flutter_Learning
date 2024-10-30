void main() {
  // musteri geldi adı ahmet parası 20

  Map<String, int> users = {'ahmet': 20, 'mehmet': 30};

  // musteri ahmetin ne kadar parası var

  print('ahmetin parası ${users['ahmet']}');

  // musteri kimler var senin elinde

  for (var item in users.keys) {
    print('${item} - ${users[item]}');
  }

  for (var i = 0; i < users.length; i++) {
    print('${users.keys.elementAt(i)} - ${users.values.elementAt(i)}');
  }

  // Yukarıda map içindeki değerlere iki farklı for içinde nasıl ulaşılır onu gördük

  print('-------');

  // 'kcaBank' adında, her kullanıcıya ait hesap bakiyelerini içeren bir harita (Map) oluşturuluyor.
// Anahtar olarak kullanıcı adı (String) ve değer olarak kullanıcının hesap bakiyeleri (List<int>) kullanılıyor.
  final Map<String, List<int>> kcaBank = {
    'ahmet': [100, 300, 200] // Ahmet'in hesap bakiyeleri
  };

// Yeni kullanıcılar ekleniyor ve bakiyeleri atanıyor.
  kcaBank['mehmet'] = [30, 20]; // Mehmet'in hesap bakiyeleri
  kcaBank['ali'] = [40, 60]; // Ali'nin hesap bakiyeleri

// 'kcaBank' haritasındaki tüm kullanıcılar üzerinde döngü başlatılıyor.
  for (var item in kcaBank.keys) {
    // item, her bir kullanıcı adı değerini temsil eder.

    // Kullanıcının tüm hesap bakiyeleri üzerinde dolaşmak için iç içe bir döngü başlatılıyor.
    for (var money in kcaBank[item]!) {
      // money, kullanıcının hesaplarındaki her bir bakiye değerini temsil eder.
      // in den sonraki değerde olan ünlem işaretinin ne işe yaradığını görmek için en aşağıdaki kısma bakabilirsiniz

      // Eğer herhangi bir hesap bakiyesi 150'den büyükse, "kredin hazır" mesajı yazdırılıyor.
      if (money > 150) {
        print('kredin hazir');
        // return; // Döngü ve fonksiyon sonlandırılıyor.
        break; // ret
      }
    }
  }

  for (var name in kcaBank.keys) {
    int result = 0;
    for (var money in kcaBank[name]!) {
      result += money;
    }

    print('$name senin toplam paran -> $result');
  }
}







// kcaBank[item]! ifadesindeki !, Dart dilinde "null assertion operator" olarak bilinir.
//  Bu operatör, değişkenin null olmadığını garanti etmek için kullanılır.
// Kodunuzda kcaBank[item], List<int>? türündedir. Bu durumda, kcaBank[item] ifadesi null dönebilir 
// (örneğin, item anahtarı kcaBank haritasında yoksa). Ancak, ! operatörü ile bu değerin null olmadığını ve 
// List<int> olduğunu garanti ediyorsunuz.
// Bu durumda, kcaBank[item]! yazarak Dart'a bu değerin kesinlikle null olmadığını belirtmiş oluyorsunuz.