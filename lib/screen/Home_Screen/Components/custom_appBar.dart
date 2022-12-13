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
          const SizedBox(width: 12.0),
          Row(
            children: const [_AppBarButton()],
          )
        ]),
      ),
    );
  }
}

class _AppBarButton extends StatelessWidget {
  const _AppBarButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => print('TV Shows'),
      child: const Text('TV Shows',
          style: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
              fontWeight: FontWeight.bold)),
    );
  }
}
