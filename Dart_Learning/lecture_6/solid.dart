void main(List<String> args) {
  IDatabase database = SQL();

  database = Mongo();
  // yapisi kolayca değştirilebildi LSP mantiği sayesinde
}

// SOLİD yapisi harf harf detay detay

// 1. Single Responsibility Princible (SRP)

class UserManager {
  String name;
  UserManager({
    required this.name,
  });

  void changeUserName(String name) {
    this.name = name;
  }
}

class UserLocalization {
  final UserManager manager;

  UserLocalization(this.manager);

  void updateNameAndLocalization() {
    manager.changeUserName('a');
    changeLocalization();
  }

  void changeLocalization() {
    print('object');
  }
}

// 2. Open Closed Principle (OSP)
// core class i değiştirmeden alt classlara ekleme yaparak devam etmektir

class Product {
  final String name;
  final String money;

  Product(this.name, this.money);
}

class ProductCategories extends Product {
  ProductCategories(super.name, super.money);

  final String category = 'asda';
}

// 3.Liskov substution Principle (LSP)
// LSP yapisi ile main kisminda da gösterildiği gibi yapi kolayca değiştirilebilir. Önce SQL ile başlanilan bir veritabani sonrasinda mongo ile devam edebilir.

abstract class IDatabase {
  void write();
}

class SQL extends IDatabase {
  @override
  void write() {
    // TODO: implement write
  }
}

class Mongo extends IDatabase {
  @override
  void write() {
    // TODO: implement write
  }
}

// 4. Interface segregation principle (ISP)
// her operasyonu bölme işlemidir bu sayede ihtiyaç olunan classda ihtiyaç olunan operasyon kullanilir

abstract class IUserOperation {
  void write();
  void read();
  void delete();
}

abstract class IUserLocation {
  void locationChange();
}

abstract class ILanguage {
  void languageChange();
}

class UserModLocation extends IUserLocation {
  @override
  void locationChange() {
    // TODO: implement locationChange
  }
} // Böylece hangi classda hangi operasyon işime yariyorsa onu kullanmis oldum

// 5. Dependency Inversion Principle (DIP)
// Ana(core) classlarda alt classlarin bağimliliklari olmamasi manasina gelir. Ara dallar kullanilarak yapilmali

abstract class ICameraManager {
  void readQR();
}

class DeviceCameraManager extends ICameraManager {
  final IphoneCameraRead iphoneCameraRead;

  DeviceCameraManager(this.iphoneCameraRead);

  @override
  void readQR() {}
}

class IphoneCameraRead extends ICameraManager {
  // illa ICameraManager extend edilmek zorunda değil başka abstract classlar da extend edilebilir
  @override
  void readQR() {}
} // Kullanilan bu classi direkt core classa extend etmemeliyiz ara dal kullanmaliyiz