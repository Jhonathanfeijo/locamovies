import 'package:flutter/material.dart';

class Filme {
  final String titulo;
  final String descricao;

  Filme({required this.titulo, required this.descricao});
}

class MoviesPage extends StatelessWidget {
  // Lista de filmes (criando objetos diretamente aqui)
  final List<Filme> movies = [
    Filme(titulo: 'Filme 1', descricao: 'Descrição do Filme 1'),
    Filme(titulo: 'Filme 2', descricao: 'Descrição do Filme 2'),
    Filme(titulo: 'Filme 3', descricao: 'Descrição do Filme 3'),
    Filme(titulo: 'Filme 4', descricao: 'Descrição do Filme 4'),
    Filme(titulo: 'Filme 5', descricao: 'Descrição do Filme 5'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Filmes'),
        backgroundColor: Color(0xFF1B50A1), // Azul
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          scrollDirection: Axis.vertical, // Exibição vertical
          itemCount: movies.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 16.0), // Espaçamento entre os itens
              child: Card(
                elevation: 5.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Container(
                  padding: EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Título do filme
                      Text(
                        movies[index].titulo,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF1B50A1), // Azul
                        ),
                      ),
                      SizedBox(height: 8),
                      // Descrição do filme
                      Text(
                        movies[index].descricao,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[700], // Cor do texto
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
