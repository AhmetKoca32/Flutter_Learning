// ignore_for_file: public_member_api_docs, sort_constructors_first
void main(List<String> args) {
  final newProduct = Product.money = 400;

  calculateMoney();

  Product.incrementMoney(
      10); // bu static fonksiyon yukarıdaki fonksiyon ile aynı işleve sahiptir

  // static fonksiyonlar çok yararlı olabileceği gibi dikkatli kullanılmazsa çok büyük sıkıntılara yol açabilir

  // user classımı kullanarak product yapmak istiyorum
  final user1 = User("ahmet", "aa");
  final newProduct2 = Product(user1.product);
  final newProduct3 =
      Product.fromUser(user1); // yukarıdaki kod satırıyla aynı işlevi görür

  Product.ahmet();
}

void productNameChange() {
  Product.money =
      null; // eğer bu şekilde bir tanımla yapılırsa static kullanılan bütün yerler hata verecektir
}

void calculateMoney() {
  if ((Product.money ?? 0) > 5) {
    // bu fonksiyonda static kavramı değil de fonksiyona parametre olarak money yollarsak daha iyi olur daha kontrol edilebilir clean bi kod olur
    print("5 tl daha ekledik");
    Product.incrementMoney(5);
    print(Product.money);
  }
} // bu fonksiyonla aynı işleve sahip bir fonksiyonu product class ımıza da ekleyeceğiz static olarak ve işimiz kolaylaşacak

class Product {
  static int? money = 10;
  String name;

  Product(this.name);
  Product.ahmet([this.name = 'ahmet']);
  factory Product.fromUser(User user) {
    return Product(user.name);
  }

  static const companyName = "AhmetBank";

  static void incrementMoney(int newMoney) {
    if (money != null) {
      money = money! +
          newMoney; // force lu bir şekilde ekleyebiliriz çünkü artık eminiz null dönemez
    }
  }
}

class User {
  final String name;
  final String product;

  User(this.name, this.product);
}
