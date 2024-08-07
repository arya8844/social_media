import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mini_socialmedia_app/auth/auth.dart';
// import 'package:mini_socialmedia_app/auth/auth.dart';
import 'package:mini_socialmedia_app/auth/login_or_register.dart';
import 'package:mini_socialmedia_app/firebase_options.dart';
import 'package:mini_socialmedia_app/pages/home_page.dart';
import 'package:mini_socialmedia_app/pages/profile_page.dart';
import 'package:mini_socialmedia_app/pages/users_page.dart';
import 'package:mini_socialmedia_app/themes/darkmode.dart';
import 'package:mini_socialmedia_app/themes/lightmode.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const AuthPage(),
      theme: lightMode,
      darkTheme: darkMode,
      routes: {
        '/login_register_page': (context) => const LoginorRegister(),
        '/home_page': (context) => HomePage(),
        '/profile_page': (context) => ProfilePage(),
        '/users_page': (context) => const UserPage(),
      },
    );
  }
}
