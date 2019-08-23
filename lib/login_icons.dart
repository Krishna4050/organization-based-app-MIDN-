import 'package:flutter/material.dart';

class Logoimage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 10.0),
              child: Image.asset(
                "img/logo.png",
                height: 190.0,
              ),
            );
    
  }
}