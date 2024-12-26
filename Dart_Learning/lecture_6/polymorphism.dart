void main(List<String> args) {
  IUser user = Turk();

  user.sayName();

  user = English();

  user.sayName();

  // user = German(); // Bu şekilde kullanmaya izin vermez çünkü implement etmedim ayni kümeden bahsetmiyoruz
  user = German() as IUser; // bu şekilde cast etmemiz gerekirdi
}

abstract class IUser {
  final String name;

  void sayName();

  IUser(this.name);
}

class Turk implements IUser {
  @override
  // TODO: implement name
  String get name => 'Ahmet';

  @override
  void sayName() {
    print('Merhaba evinize hoşgeldin $name');
    print('Aç misin');
  }
}

class English implements IUser {
  @override
  // TODO: implement name
  String get name => 'Allison';

  @override
  void sayName() {
    print('Hello welcome to your home $name');
    print('Are you hungry');
    print('let\'s meet our friends in OxFord');
  }
}

class German {
  @override
  // TODO: implement name
  String get name => 'sfadasd';

  @override
  void sayName() {
    print('gsafadad $name');
    print('sagsadasd');
  }
}
