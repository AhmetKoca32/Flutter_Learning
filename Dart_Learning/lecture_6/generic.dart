// ignore_for_file: public_member_api_docs, sort_constructors_first
void main(List<String> args) {
  final user = User(data: 'a');
  print(user.runtimeType);

  final user2 = User(data: 1);
  print(user2.runtimeType);

  // generic yapisi sayesinde değişkenimizin türü verdiğimiz değerin türüne göre değişir

  final adminUser = AdminUser();
  removeUserAll(adminUser);
}

void removeUserAll<T extends IAdmin>(T data) {
  data.removeUser();
}

class User<T> {
  T data;
  User({
    required this.data,
  });
}

abstract class IAdmin {
  void removeUser();
}

class AdminUser extends IAdmin {
  @override
  void removeUser() {
    // TODO: implement removeUser
  }
}
