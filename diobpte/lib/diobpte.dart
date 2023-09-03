
import 'package:diobpte/modelos/aluno.dart';
import 'package:diobpte/modelos/console_utils.dart';

void executa() {
  print('Bem vindo ao sistema de notas:');
  var nome = ConsoleUtils.lerStringComTexto('Digite o nome do aluno:');
  Aluno aluno = Aluno(nome);
  print(aluno.getNome());
  /*
  try {
    double numero = double.parse(linha ?? '');
    print(numero);
  } catch (e) {
    print('Número inválido: $linha');
  } finally {
    print('Executando finally');
  }
  */
}
