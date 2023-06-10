import 'package:flutter/material.dart';

class EighthScreen extends StatefulWidget {
  const EighthScreen({super.key});

  @override
  State<EighthScreen> createState() => _EighthScreenState();
}

class _EighthScreenState extends State<EighthScreen>  with SingleTickerProviderStateMixin{
  bool _isPressed = false;
  late Widget _animatedModalBarrier;
  late AnimationController _animationController;
  late Animation<Color?> _colorAnimation;

  @override
  void initState(){
    ColorTween _colorTween = ColorTween(begin: Colors.orangeAccent.withOpacity(0.5), end: Colors.blueGrey.withOpacity(0.5));
    _animationController = AnimationController(vsync: this, duration:  const Duration(seconds: 3));
    _colorAnimation = _colorTween.animate(_animationController);
    super.initState();
  }

  @override
  Widget build(BuildContext context){
    return Center();
  }
}