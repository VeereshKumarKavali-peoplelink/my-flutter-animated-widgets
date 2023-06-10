import 'package:flutter/material.dart';

class EleventhScreen extends StatefulWidget {
  const EleventhScreen({super.key});

  @override
  State<EleventhScreen> createState() => _EleventhScreenState();
}

class _EleventhScreenState extends State<EleventhScreen> {
  bool _isFlat = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text("Animated Physical Model"), centerTitle: true,), body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
       
        children: [
          AnimatedPhysicalModel(curve: Curves.fastOutSlowIn, elevation: _isFlat ? 0 : 6.0, shape: BoxShape.rectangle,color: Colors.white, shadowColor: Colors.black, duration: const Duration(milliseconds: 500), child: const SizedBox(
            height: 120.0,
            width: 120.0,
            child: Icon(Icons.android_outlined)
          )
          ),
    
          const SizedBox(height: 20),
          ElevatedButton(onPressed: (){setState(() {
            _isFlat = !_isFlat;
          });}, child: const Text("Click"))
        ],
      ),
    ));
  }
}