import 'package:flutter/material.dart';

class FifteenScreen extends StatefulWidget {
  const FifteenScreen({super.key});

  @override
  State<FifteenScreen> createState() => _FifteenScreenState();
}

class _FifteenScreenState extends State<FifteenScreen> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 500),
            child: Text("$_count",
                style: const TextStyle(fontSize: 40), key: ValueKey(_count)),
            transitionBuilder: (Widget child, Animation<double> animation){
              return ScaleTransition(scale: animation, child: child);
            },
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  _count += 1;
                });
              },
              child: const Text("Add"))
        ],
      ),
    );
  }
}
