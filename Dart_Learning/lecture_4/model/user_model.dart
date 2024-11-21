//adi olmak zorunda
//parası olmak zorunda y
//asını vermeyebilir
//citysini vermeyebilir
//id degiskenine sadece bu class üzerinden erisilsin
class User {
  // özellikleri neler
  late final String name;
  late int money;
  late final int? age; // nullable (null olabilir)
  late final String? city; // nullable (null olabilir)

  late final String userCode;

  late final String _id;

  User(String name, int money, {required String id, int? age, String? city}) {
    this.name = name;
    this.money = money;
    this.age = age;
    this.city = city;
    _id = id;
    userCode = (city ?? 'ist') + name;
  }

  bool isSpecialUser(String id) {
    return _id == id;
  }

  // bool isEmptyId() {
  //   return _id.isEmpty;
  // }

// aşağıdaki fonksiyon yukarıdaki  fonksiyonla aynı işlevi görür aradaki tek fark
// aşağıdakinin arrow function ile yazılmış olmasıdır
// bool isEmtpyId() => _id.isEmpty;

// aşağıdaki fonksiyonun ise yukarıdakinden tek farkı değer almayan fonksiyonlarda kullanılması
// Yani değer almayan fonksiyonlar için kullanılan bir diğer arrow function yöntemi
  bool get isEmptyId => _id.isEmpty;
}
