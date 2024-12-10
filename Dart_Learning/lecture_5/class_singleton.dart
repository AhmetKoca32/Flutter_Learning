void main(List<String> args) {
  final newProduct = Product.money = 400;

  calculateMoney();

  Product.incrementMoney(
      10); // bu static fonksiyon yukarıdaki fonksiyon ile aynı işleve sahiptir

  // static fonksiyonlar çok yararlı olabileceği gibi dikkatli kullanılmazsa çok büyük sıkıntılara yol açabilir
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

  static const companyName = "AhmetBank";

  static void incrementMoney(int newMoney) {
    if (money != null) {
      money = money! +
          newMoney; // force lu bir şekilde ekleyebiliriz çünkü artık eminiz null dönemez
    }
  }
}
