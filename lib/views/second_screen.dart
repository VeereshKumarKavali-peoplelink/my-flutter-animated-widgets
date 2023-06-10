import 'package:flutter/material.dart';
import 'dart:math' as math;

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen>  with TickerProviderStateMixin{
  late final AnimationController _controller = AnimationController(vsync: this, duration: const Duration(seconds: 1))..repeat();

  @override
  void dispose(){
    _controller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedBuilder(animation: _controller, child: const FlutterLogo(size: 100), builder: (BuildContext context, Widget? child){
        return Transform.rotate(angle: _controller.value* 2.0 * math.pi , child: child);  //transalte, scale , rotate
      },),
    );
  }
}