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

  double retornaMedia() {
    double total = 0;
    for (var nota in _notas) {
      total = total + nota;
    }
    var media = total / _notas.length;
    return media.isNaN ? 0 : media;
  }

  bool aprovado(double notaCorte) {
    return retornaMedia() >= notaCorte;
  }

  Aluno(String nome) {
    _nome = nome;
  }
}