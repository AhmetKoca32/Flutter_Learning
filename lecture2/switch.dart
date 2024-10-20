void main() {
  final int classDegree = 2;
  bool isSuccess = false;

  const int successValueHigh = 2;

  // 2 ise ekrana bravo
  // 1 ise olur
  // 0 ise yeterli
  // diğer durumlarda basrisiz

  switch (classDegree) {
    case successValueHigh:
      print("bravo");
      isSuccess = true;
      break;
    case 1:
      print("olur");
      isSuccess = true;
      break;
    case 0:
      print("yeterli");
      isSuccess = true;
      break;
    default:
      print("basarisiz");
      isSuccess = false;
      break;
  }

  print("beyefendi çocugunuzun sonucu : $isSuccess");

  // mağazaya gelenlerin ismi veli olursa print bravo yaz
  String name = "ahmet"; // "veli" stringinde de çalışır

  const String specialUser1 = "veli";
  const String specialUser2 = "ahmet";

  switch (name) {
    case specialUser1:
    case specialUser2:
      print("bravo");
      break;
    default:
      print("sorunlu");
  }
}
