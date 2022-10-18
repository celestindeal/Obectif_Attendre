import 'package:flame/game.dart';
import 'package:flutter/material.dart';

import 'dino/dino_game.dart';
import 'dino/helpers/navigation_keys.dart';

class Dino extends StatefulWidget {
  @override
  State<Dino> createState() => _DinoState();
}

class _DinoState extends State<Dino> {
  final game = DinoGame();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            GameWidget(
              game: game,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: NavigationKeys(
                onDirectionChanged: game.onArrowKeyChanged,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
