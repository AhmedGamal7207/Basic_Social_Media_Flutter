import 'package:basic_social_media_app/firebase_options.dart';
import 'package:basic_social_media_app/pages/home_page.dart';
import 'package:basic_social_media_app/pages/login_page.dart';
import 'package:basic_social_media_app/pages/profile_page.dart';
import 'package:basic_social_media_app/pages/register_page.dart';
import 'package:basic_social_media_app/pages/users_page.dart';
import 'package:basic_social_media_app/theme/dark_mode.dart';
import 'package:basic_social_media_app/theme/light_mode.dart';
import 'package:basic_social_media_app/widget_tree.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

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
      theme: lightMode,
      darkTheme: darkMode,
      home: WidgetTree(),
      routes: {
        '/login_page': (context) => LoginPage(),
        '/register_page': (context) => RegisterPage(),
        '/home_page': (context) => HomePage(),
        '/profile_page': (context) => ProfilePage(),
        '/users_page': (context) => UsersPage(),
      },
    );
  }
}
