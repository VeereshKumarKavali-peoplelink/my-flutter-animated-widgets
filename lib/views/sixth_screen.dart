import 'package:flutter/material.dart';

class SixthScreen extends StatefulWidget {
  const SixthScreen({super.key});

  @override
  State<SixthScreen> createState() => _SixthScreenState();
}

class _SixthScreenState extends State<SixthScreen> with TickerProviderStateMixin {
  bool _isplay = false;
  late AnimationController _controller;

  @override
  void initState(){
    _controller = AnimationController(vsync: this, duration: const Duration(seconds:  1));
    super.initState();
  }


  @override 
  void dispose(){
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(child: GestureDetector(
      onTap: (){
        if (_isplay == false){
          _controller.forward();
          _isplay = true;

        }else{
          _controller.reverse();
          _isplay = false;
        }
      },
      child: AnimatedIcon(icon: AnimatedIcons.play_pause,color: Colors.white,progress: _controller, size: 100)
    ));
  }
}