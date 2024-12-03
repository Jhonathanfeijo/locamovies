import 'package:flutter/material.dart';

class PopularMovies extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return PopularMovieState();
  }
}

class PopularMovieState extends State<PopularMovies> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: [Text('Text 1'), Text('Text 2')],
      ),
    );
  }
}
