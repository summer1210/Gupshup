import 'package:flutter/material.dart';
import 'package:gupshup/screens/welcome_screen.dart';
import 'package:gupshup/screens/login_screen.dart';
import 'package:gupshup/screens/registration_screen.dart';
import 'package:gupshup/screens/chat_screen.dart';
import 'package:firebase_core/firebase_core.dart';

// void main() => runApp();
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(Gupshup());
}

class Gupshup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        ChatScreen.id: (context) => ChatScreen(),
      },
    );
  }
}
