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
}