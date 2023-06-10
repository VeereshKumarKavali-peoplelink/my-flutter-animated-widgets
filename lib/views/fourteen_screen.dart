import 'package:flutter/material.dart';

class FourteenScreen extends StatefulWidget {
  const FourteenScreen({super.key});

  @override
  State<FourteenScreen> createState() => _FourteenScreenState();
}

class _FourteenScreenState extends State<FourteenScreen> {
  double _size = 300;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _size = _size == 300 ? 100 : 300;
        });
      },
      child: Container(
          color: Colors.white,
          child: AnimatedSize(
              curve: Curves.easeIn,
              duration: const Duration(seconds: 1),
              child: FlutterLogo(size: _size))),
    );
  }
}
