import 'package:flutter/material.dart';
import 'package:project_1/pages/Home.dart';
import 'package:project_1/pages/Answers.dart';

void main() => runApp(MaterialApp(
  home: Home(),
  routes: {
    '/home' : (context) => Home(),
    '/Answers':(context) => Answers()
  },

));



