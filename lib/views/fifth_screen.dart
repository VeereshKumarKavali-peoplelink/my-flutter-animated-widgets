import 'package:flutter/material.dart';

class FifthScreen extends StatefulWidget {
  const FifthScreen({super.key});

  @override
  State<FifthScreen> createState() => _FifthScreenState();
}

class _FifthScreenState extends State<FifthScreen> {
  bool _first = true;
  double _fontSize = 60;
  Color _color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
         SizedBox(height: 120, child: AnimatedDefaultTextStyle(style: TextStyle(fontSize: _fontSize, color: _color, fontWeight: FontWeight.bold), duration:  const Duration(milliseconds: 300), child: const Text("Flutter"))),
         TextButton(onPressed: (){
          setState(() {
            _fontSize = _first ? 90 : 60;
            _color = _first ? Colors.blue : Colors.red;
            _first = !_first;
            
          });
         }, child: const Text("Switch"))

      ],
    );
  }
}