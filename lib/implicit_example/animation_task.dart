import 'package:flutter/material.dart';

class AnimationContainerTask extends StatefulWidget {
  const AnimationContainerTask({super.key});

  @override
  State<AnimationContainerTask> createState() => _AnimationContainerTaskState();
}

class _AnimationContainerTaskState extends State<AnimationContainerTask> {
  double _width = 0;
  double _height = 0;
  bool isAnimate = true;
  double _fontSize = 15;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: const Duration(seconds: 5),
              color: Colors.red,
              height: _height,
              width: _width,
              child:   Center(child: Text("Hashir" , style: TextStyle( fontSize: isAnimate ? 0 : _fontSize),)),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  if (isAnimate) {
                    _height = 200;
                    _width = 200;
                    isAnimate = false;
                    print("true : $isAnimate");
                  } else {
                    _height = 0;
                    _width = 0;
                    isAnimate = true;
                    print("false : $isAnimate");
                  }
                });
              },
              child: const Text("Animation"),
            ),
          ],
        ),
      ),
    );
  }
}
