class User2 {
  // özellikleri neler
  final String name;
  int _money;

  int get money => _money;

  set money(int? money) {
    // if (money == null) {
    //   _money = 0;
    // } else {
    //   _money = money;
    // }

    _money = money == null ? 0 : money;
  }

  final int? age; // nullable (null olabilir)
  final String? city; // nullable (null olabilir)

  late final String userCode;

  User2(this.name, this._money, {this.age, this.city}) {
    userCode = (city ?? 'ist') + name;
  }
}

extension User2ControlExtention on User2 {
  void controlName() {
    print(name);
  }
}
