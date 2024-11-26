import 'package:colorchanger_riverpod/Controller/Home%20Screen%20Controller/home_screen_controller.dart';
import 'package:colorchanger_riverpod/Controller/Home%20Screen%20Controller/home_screen_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final homescreenstate =
        ref.watch(HomeScreenStateNotifierProvider) as HomeScreenState;
    return Scaffold(
      backgroundColor: homescreenstate.currentColor,
      body: Center(
        child: ListView.separated(
            shrinkWrap: true,
            padding: EdgeInsets.symmetric(horizontal: 30),
            itemBuilder: (context, index) => InkWell(
                  onTap: () {
                    ref
                        .read(HomeScreenStateNotifierProvider.notifier)
                        .onColorchange(homescreenstate.colors[index]);
                  },
                  child: Container(
                    color: homescreenstate.colors[index],
                    height: 80,
                  ),
                ),
            separatorBuilder: (context, index) => SizedBox(
                  height: 20,
                ),
            itemCount: 5),
      ),
    );
  }
}
