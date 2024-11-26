import 'package:colorchanger_riverpod/Controller/Home%20Screen%20Controller/home_screen_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final HomeScreenStateNotifierProvider =
    StateNotifierProvider((ref) => HomeScreenStateNotifier());

class HomeScreenStateNotifier extends StateNotifier<HomeScreenState> {
  HomeScreenStateNotifier() : super(HomeScreenState(currentColor: Colors.red));

  onColorchange(Color NewColor) {
    state = state.changecolor(newColor: NewColor);
  }
}
