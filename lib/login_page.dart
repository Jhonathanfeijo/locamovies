import 'package:flutter/material.dart';
import 'package:locamovies/main.dart';

class LoginPage extends StatefulWidget {
  @override
  LoginPageState createState() {
    // TODO: implement createState
    return LoginPageState();
  }
}

class LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown[700],
        titleTextStyle:TextStyle(color: Colors.grey[300], fontSize: 28),
        title: Text(
          'LocaMovies',
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[300],
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
                decoration: BoxDecoration(color: Colors.brown[700]),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'LocaMovies',
                        style: TextStyle(color: Colors.white, fontSize: 24),
                      ),
                      Text(
                        'Bem vindo!',
                        style: TextStyle(color: Colors.white),
                      )
                    ])),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Início'),
            ),
            ListTile(
              leading: Icon(Icons.search),
              title: Text('Procurar filmes'),
            ),
            const Divider(),
            ListTile(
              leading: Icon(Icons.movie),
              title: Text('Meus filmes'),
            ),
            ListTile(
              leading: Icon(Icons.movie_edit),
              title: Text('Gerenciar filmes'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Configurações'),
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Sair'),
            )
          ],
        ),
      ),
      body: Container(
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [],
        )),
      ),
    );
  }
}
