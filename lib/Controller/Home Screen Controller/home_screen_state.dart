import 'package:flutter/material.dart';

class HomeScreenState {
  Color? currentColor = Colors.purple;

  List colors = [
    Colors.yellow,
    Colors.green,
    Colors.white,
    Colors.blue,
    Colors.red,
  ];

  HomeScreenState({required this.currentColor});

  HomeScreenState changecolor({Color? newColor}) {
    return HomeScreenState(currentColor: newColor);
  }
}
