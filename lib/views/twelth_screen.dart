import 'package:flutter/material.dart';

class TwelthScreen extends StatefulWidget {
  const TwelthScreen({super.key});

  @override
  State<TwelthScreen> createState() => _TwelthScreenState();
}

class _TwelthScreenState extends State<TwelthScreen> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 200,
        height: 350,
        child: Stack(
          children: [
            AnimatedPositioned(
                width: selected ? 200.0 : 50.0,
                height: selected ? 50.0 : 200.0,
                top: selected ? 50.0 : 150.0,
                curve: Curves.fastOutSlowIn,
                duration: const Duration(seconds: 2),
                child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selected = !selected;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.orangeAccent,
                          borderRadius: BorderRadius.circular(25)),
                    )))
          ],
        ));
  }
}
