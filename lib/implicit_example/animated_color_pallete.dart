import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedColorPalette extends StatefulWidget {
  const AnimatedColorPalette({super.key});

  @override
  State<AnimatedColorPalette> createState() => _AnimatedColorPaletteState();
}

class _AnimatedColorPaletteState extends State<AnimatedColorPalette> {
  List<Color> currentPalette = [];
  static List<Color> generateRandomPalette() {
    final random = Random();
    return List.generate(
        5,
        (index) => Color.fromRGBO(
            random.nextInt(256), random.nextInt(256), random.nextInt(256), 1));
  }

  void regeneratePalette() {
    setState(() {
      currentPalette = generateRandomPalette();
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    generateRandomPalette();
    regeneratePalette();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Color Palette"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            for (Color color in currentPalette)
              AnimatedContainer(
                duration: const Duration(milliseconds: 500),
                height: 100,
                width: 100,
                color: color,
                margin: const EdgeInsets.all(10),
              ),
            ElevatedButton(
                onPressed: () {
                  regeneratePalette();
                },
                child: const Text("Generate Random Palette"))
          ],
        ),
      ),
    );
  }
}
