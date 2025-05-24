import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:restaurentmanagement/firebase_options.dart';
import 'package:restaurentmanagement/pages/login_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options:DefaultFirebaseOptions.currentPlatform
  );
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Restaurent Management System",
      theme: ThemeData(
        primaryColor: Colors.blueAccent,
        secondaryHeaderColor: Colors.redAccent,

      ),
      home: LoginScreen(),
    );
  }
}
