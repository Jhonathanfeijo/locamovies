import 'package:flutter/material.dart';

// Modelo de filme
class Movie {
  final String title;

  Movie({required this.title});
}

// MovieProvider para gerenciar o estado
class MovieProvider with ChangeNotifier {
  List<Movie> popularMovies = [];

  // Método para adicionar filmes populares (simulação de dados)
  void addPopularMovies() {
    popularMovies = [
      Movie(title: 'Filme 1'),
      Movie(title: 'Filme 2'),
      Movie(title: 'Filme 3'),
      Movie(title: 'Filme 4'),
    ];
    notifyListeners(); // Notifica que o estado mudou
  }
}