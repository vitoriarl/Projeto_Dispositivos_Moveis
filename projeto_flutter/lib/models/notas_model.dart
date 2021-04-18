class Note {
  String titulo;
  String conteudo;
  DateTime data;

  Note({this.titulo, this.conteudo, this.data});
}

final Map<String, int> categories = {
  'Notas': 2,
  'Trabalho': 10,
  'Casa': 13,
  'Completo': 3,
};

final List<Note> notes = [
  Note(
    titulo: 'Fazer Tarefa de D.M.',
    conteudo: 'Fazer o trabalho final da matéria.',
    data: DateTime(2021, 8, 8, 6, 20),
  ),
  Note(
    titulo: 'Escrever o TCC',
    conteudo: 'Comecer a fazer a introdução.',
    data: DateTime(2021, 8, 7, 5, 20),
  ),
];
