
import 'package:diobpte/modelos/aluno.dart';
import 'package:diobpte/modelos/console_utils.dart';

void executa() {
  print('Bem vindo ao sistema de notas:');
  var nome = ConsoleUtils.lerStringComTexto('Digite o nome do aluno:');
  Aluno aluno = Aluno(nome);
  print(aluno.getNome());
  double? nota;

  do {
    nota = ConsoleUtils.lerDoubleComTextoEValidacao('Digite a nota do aluno ou S para sair','S');
    if(nota != null) {
      aluno.setNota(nota);
    }
  } while (nota != null);
  print('As notas digitadas foram: ${aluno.getNotas()}');
  print('A média do aluno é: ${aluno.retornaMedia()}');
  if(aluno.aprovado(7)) {
    print('O aluno ${aluno.getNome()} foi aprovado');
  } else {
     print('O aluno ${aluno.getNome()} foi reprovado');
  }
}
