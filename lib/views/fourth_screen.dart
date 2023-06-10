import 'package:flutter/material.dart';

class FourthScreen extends StatefulWidget {
  const FourthScreen({super.key});

  @override
  State<FourthScreen> createState() => _FourthScreenState();
}

class _FourthScreenState extends State<FourthScreen> {
  bool _bool = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(width: double.infinity, height: 100),
        TextButton(
            onPressed: () {
              setState(() {
                _bool = !_bool;
              });
            },
            child: const Text("Switch", style: TextStyle(color: Colors.white))),
        AnimatedCrossFade(
            firstChild:
                Image.asset("assets/icon/greenmountain.jpg", width: double.infinity),
            secondChild: 
                Image.asset("assets/icon/ocean.jpg",width: double.infinity),
            crossFadeState:
                _bool ? CrossFadeState.showFirst : CrossFadeState.showSecond,
            duration: const Duration(seconds: 1))
      ],
    );
  }
}
