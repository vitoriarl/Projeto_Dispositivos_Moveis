import 'package:flutter/material.dart';

class Option {
  Icon icone;
  String titulo;
  String subtitulo;

  Option({this.icone, this.titulo, this.subtitulo});
}

final options = [
  Option(
    icone: Icon(Icons.dashboard, size: 40.0),
    titulo: 'Opção 1',
    subtitulo: 'Esta é a opção um.',
  ),
  Option(
    icone: Icon(Icons.do_not_disturb, size: 40.0),
    titulo: 'Opção 2',
    subtitulo: 'Esta é a opção dois.',
  ),
  Option(
    icone: Icon(Icons.account_circle, size: 40.0),
    titulo: 'Opção 3',
    subtitulo: 'Esta é a opção três.',
  ),
  Option(
    icone: Icon(Icons.invert_colors, size: 40.0),
    titulo: 'Opção 4',
    subtitulo: 'Esta é a opção quatro.',
  ),
  Option(
    icone: Icon(Icons.watch_later, size: 40.0),
    titulo: 'Opção 5',
    subtitulo: 'Esta é a opção cinco.',
  ),
  Option(
    icone: Icon(Icons.fastfood, size: 40.0),
    titulo: 'Opção 6',
    subtitulo: 'Esta é a opção seis.',
  ),
  Option(
    icone: Icon(Icons.local_airport, size: 40.0),
    titulo: 'Opção 7',
    subtitulo: 'Esta é a opção sete.',
  ),
  Option(
    icone: Icon(Icons.settings, size: 40.0),
    titulo: 'Opção 8',
    subtitulo: 'Esta é a opção oito.',
  ),
];
