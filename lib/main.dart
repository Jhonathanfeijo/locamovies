import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'login_page.dart'; // ou o nome do seu arquivo de login

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LocaMovies',
      theme: ThemeData(
        primaryColor: Color(0xFF1B50A1), // Azul
      ),
      home: LoginPage(),
    );
  }
}
