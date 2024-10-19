import 'package:flutter/material.dart';

class MyCustomButton extends StatelessWidget {
  Function() onTap;
  String message;
   MyCustomButton({super.key, required this.onTap, required this.message});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      child: Text(message),
    );
  }
}