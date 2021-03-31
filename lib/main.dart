import 'package:flutter/material.dart';
import 'package:bplnet/screens/loading/loading.dart';
import 'package:bplnet/screens/home/home.dart';

void main() {
  runApp(MaterialApp(
    title: 'Flutter Demo',
    initialRoute: '/',
    routes: {
      '/': (context) => Loading(),
      '/home': (context) => Home(),
    },
  )
  );
}




