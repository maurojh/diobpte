import 'dart:convert';

import 'package:diobpte/diobpte.dart' as diobpte;
import 'dart:io';

void main(List<String> arguments) {
  print('Digite um número:');
  var linha = stdin.readLineSync(encoding: utf8);
  double numero = double.parse(linha ?? '');
  print(numero);
}
