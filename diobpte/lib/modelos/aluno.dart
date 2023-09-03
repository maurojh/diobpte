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
    double total = _notas.reduce((value, element) => value + element);
    var media = total / _notas.length;
    return media.isNaN ? 0 : media;
  }

  bool aprovado(double notaCorte) {
    return retornaMedia() >= notaCorte;
  }

  Aluno(this._nome);
}