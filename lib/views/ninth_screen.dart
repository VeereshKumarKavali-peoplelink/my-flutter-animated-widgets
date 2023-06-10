import 'package:flutter/material.dart';

class NinthScreen extends StatefulWidget {
  const NinthScreen({super.key});

  @override
  State<NinthScreen> createState() => _NinthScreenState();
}

class _NinthScreenState extends State<NinthScreen> {
  double opacityLevel = 1.0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [AnimatedOpacity(opacity: opacityLevel, duration: const Duration(seconds: 2), child: const FlutterLogo(size: 50)), ElevatedButton(onPressed: (){
          setState(()=> opacityLevel = opacityLevel == 0 ? 1.0 : 0.0);
        }, child: const Text("Fade Logo"))],
      )
    );
  }
}