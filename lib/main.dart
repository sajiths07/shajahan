import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shajahan/features/app/splash_screen/splash_screen.dart';
import 'package:shajahan/features/user_auth/presentation/pages/login_page.dart';
import 'package:shajahan/features/user_auth/presentation/pages/home_page.dart';
import 'package:shajahan/features/user_auth/presentation/pages/sign_up_page.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyAZMUJVaIDYC1qQYVTfKB3YH67D2uCRgCk",
          authDomain: "shajahan-7d7f5.firebaseapp.com",
          projectId: "shajahan-7d7f5",
          storageBucket: "shajahan-7d7f5.appspot.com",
          messagingSenderId: "974741944188",
          appId: "1:974741944188:web:7cc7ed1fb3dbef8edf96f9"),
<<<<<<< HEAD
=======

>>>>>>> e2ae9f6 (Initial commit)
    );
  } else {
    await Firebase.initializeApp();
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter FireBase",
      routes: {
        '/': (context) => SplashScreen(
              child: LoginPage(),
            ),
        '/login': (context) => LoginPage(),
        '/signup': (context) => SignUpPage(),
        '/home': (context) => HomePage(),
      },
    );
  }
}
