class Aluno {
  String _nome = '';
  final List<double> _notas = [];

  List<double> getNotas() => _notas;

  void setNota(double nota) {
    _notas.add(nota);
  }

  String getNome() => _nome;

  setNome(String value) {
    _nome = value;
  }

  Aluno(String nome) {
    _nome = nome;
  }
}