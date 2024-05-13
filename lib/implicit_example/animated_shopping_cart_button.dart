import 'package:flutter/material.dart';

class AnimatedShoppingCartButton extends StatefulWidget {
  const AnimatedShoppingCartButton({super.key});

  @override
  State<AnimatedShoppingCartButton> createState() =>
      _AnimatedShoppingCartButtonState();
}

class _AnimatedShoppingCartButtonState
    extends State<AnimatedShoppingCartButton> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Shopping Container"),
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            isExpanded = !isExpanded;
            setState(() {});
          },
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            width: isExpanded ? 200 : 120,
            decoration:
                BoxDecoration(color: isExpanded ? Colors.red : Colors.green),
            child: isExpanded
                ? const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.question_mark_sharp),
                      Text("Added To Cart"),
                    ],
                  )
                : const Icon(Icons.shopping_cart),
          ),
        ),
      ),
    );
  }
}
