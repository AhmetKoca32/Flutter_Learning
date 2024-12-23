class ProductConfig {
  static final ProductConfig instance = ProductConfig._('a');

  final String apiKey;

  ProductConfig._(this.apiKey);
}

class ProductLazySingleton {
  static ProductLazySingleton? _instance;
  static ProductLazySingleton get instance {
    if (_instance == null) _instance = ProductLazySingleton._init();
    return _instance!;
  }

  ProductLazySingleton._init();
}
// Lazy singleton yapisinda instance ilk başta bostur ne zaman ki class tetiklendi ondan sonra instance nin içi doldurulur ve aktifleşir
