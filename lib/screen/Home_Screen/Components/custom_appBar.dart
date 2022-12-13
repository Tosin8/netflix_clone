import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 24.0),
      color: Colors.orange,
      child: SafeArea(
        child: Row(children: [
          Image.asset('assets/images/logo.png'),
        ]),
      ),
    );
  }
}
