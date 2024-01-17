// import 'package:flutter/material.dart';
// import 'package:quizflutter/views/intro_screen.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(
//           seedColor: Colors.pinkAccent,
//         ),
//         useMaterial3: true,
//       ),
//       home: const IntroScreen(),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:quizflutter/quiz.dart';

void main(List<String> args) {
  runApp(
    const Quiz(),
  );
}
