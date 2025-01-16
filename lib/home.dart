import 'package:flutter/material.dart';
import 'package:locamovies/movies/movies.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Controlador para alternar entre as páginas
  int _selectedIndex = 1;  // Inicializa diretamente na tela de Filmes (índice 1)

  // Método para mudar o índice
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;  // Atualiza a tela com base no índice
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LocaMovies'),
        backgroundColor: Color(0xFF1B50A1), // Azul
        centerTitle: true,
      ),
      drawer: Drawer(
        backgroundColor: Color(0xFFEDBB58), // Amarelo
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFF1B50A1), // Azul
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'LocaMovies',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                  Text(
                    'Bem-vindo!',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.home, color: Colors.white),
              title: Text('Início', style: TextStyle(color: Colors.white)),
              onTap: () {
                _onItemTapped(1);  // Ao clicar em "Início", exibe a lista de filmes
                Navigator.pop(context);  // Fecha o Drawer
              },
            ),
            ListTile(
              leading: Icon(Icons.movie, color: Colors.white),
              title: Text('Filmes', style: TextStyle(color: Colors.white)),
              onTap: () {
                _onItemTapped(1);  // Navegar para Lista de Filmes
                Navigator.pop(context);  // Fecha o Drawer
              },
            ),
            ListTile(
              leading: Icon(Icons.movie_edit, color: Colors.white),
              title: Text('Meus Filmes', style: TextStyle(color: Colors.white)),
              onTap: () {
                // Lógica para "Meus Filmes"
                Navigator.pop(context);  // Fecha o Drawer
                // Adicione aqui a navegação ou lógica para "Meus Filmes"
              },
            ),
            const Divider(),
            ListTile(
              leading: Icon(Icons.settings, color: Colors.white),
              title: Text('Configurações', style: TextStyle(color: Colors.white)),
            ),
            ListTile(
              leading: Icon(Icons.logout, color: Colors.white),
              title: Text('Sair', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
      body: IndexedStack(
        index: _selectedIndex,  // Define qual conteúdo exibir
        children: [
          // HomePage
          Container(
            color: Color(0xFF1B50A1), // Azul de fundo
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Olá, Jhonathan",
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600, color: Colors.white),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      _onItemTapped(1);  // Navegar para a lista de filmes diretamente
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF1B50A1), // Azul
                      padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                    ),
                    child: Text('Ver Filmes', style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
            ),
          ),
          // Lista de Filmes (MoviesPage)
          MoviesPage(),
        ],
      ),
    );
  }
}
