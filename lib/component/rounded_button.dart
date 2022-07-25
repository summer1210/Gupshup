import 'package:flutter/material.dart';
import 'package:gupshup/main.dart';
import 'package:gupshup/screens/registration_screen.dart';
import 'package:gupshup/screens/login_screen.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton(
    @required this.colour,
    @required this.title,
    this.onpressed,
  );
  final Color colour;
  final String title;

  final VoidCallback onpressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        color: colour,
        borderRadius: BorderRadius.circular(30.0),
        elevation: 5.0,
        child: MaterialButton(
          onPressed: onpressed,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            title,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
