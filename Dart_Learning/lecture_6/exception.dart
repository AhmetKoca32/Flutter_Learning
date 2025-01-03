void main(List<String> args) {
  String? userName = 'A2';

  if (userName.length > 2) {
    print('a');
  } else {
    throw UserNameException();
  }
}

class UserNameException implements Exception {
  @override
  String toString() {
    return 'user name null girmişsin bunu düzelt';
  }
}
