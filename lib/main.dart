import 'package:flutter/material.dart';
import 'package:my_flutter_animated_widgets/views/eleventh_screen.dart';
import 'package:my_flutter_animated_widgets/views/fifteen_screen.dart';
import 'package:my_flutter_animated_widgets/views/fifth_screen.dart';
import 'package:my_flutter_animated_widgets/views/first_screen.dart';
import 'package:my_flutter_animated_widgets/views/fourteen_screen.dart';
import 'package:my_flutter_animated_widgets/views/fourth_screen.dart';
import 'package:my_flutter_animated_widgets/views/ninth_screen.dart';
import 'package:my_flutter_animated_widgets/views/second_screen.dart';
import 'package:my_flutter_animated_widgets/views/seventh_screen.dart';
import 'package:my_flutter_animated_widgets/views/sixth_screen.dart';
import 'package:my_flutter_animated_widgets/views/tenth_screen.dart';
import 'package:my_flutter_animated_widgets/views/third_screen.dart';
import 'package:my_flutter_animated_widgets/views/thirteen_screen.dart';
import 'package:my_flutter_animated_widgets/views/twelth_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Animated Widgets',
      
      theme: ThemeData(
        primarySwatch: Colors.green,

        //colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        //useMaterial3: true,
      ),
      //home: const FirstScreen()
      //home: const SecondScreen()
      //home: const ThirdScreen()
      //home: const FourthScreen()
      //home: const FifthScreen()
      //home: const SixthScreen()
      //home: const SeventhScreen()
      //home: const EighthScreen()
      //home: const NinthScreen()
      //home: const TenthScreen()
      //home: const EleventhScreen()
      //home: const TwelthScreen(),
      //home: const ThirteenScreen()
      //home: const FourteenScreen()
      home: const FifteenScreen()
    );
  }
}

