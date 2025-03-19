enum Flavor {
  dev,
  prod;

  bool get isProd => this == prod;

  String get basePrivateUrl {
    switch (this) {
      case dev:
        return 'https://my-json-server.typicode.com/vborbely/SimuBank/';
      case prod:
        return 'https://my-json-server.typicode.com/vborbely/SimuBank/';
    }
  }

  String get basePublicUrl {
    switch (this) {
      case dev:
        return 'https://my-json-server.typicode.com/vborbely/SimuBank/';
      case prod:
        return 'https://my-json-server.typicode.com/vborbely/SimuBank/';
    }
  }
}

class Environment {
  Environment._();

  static Flavor current = Flavor.prod;
}
