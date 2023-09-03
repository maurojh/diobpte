import 'dart:convert';
import 'dart:io';

class ConsoleUtils {
  static String lerString() {
    var linha = stdin.readLineSync(encoding: utf8);
    return linha ?? '';
  }

  static String lerStringComTexto(String texto) {
    print(texto);
    return lerString();
  }

  static double? lerDouble() {
    var lido = lerString();
    try {
      return double.parse(lido);
    } catch (e) {
      return null;
    }
  }

  static double? lerDoubleComTexto(String texto) {
    print(texto);
    return lerDouble();
  }

  static double? lerDoubleComTextoEValidacao(String texto, String validacao) {
    do {
      try {
        var value = lerStringComTexto(texto);
        if (value == validacao) {
          return null;
        }
        return double.parse(value);
      } catch (e) {
        print(texto);
      }
    } while (true);
  }
}
