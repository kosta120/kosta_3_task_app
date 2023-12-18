import 'package:flutter/material.dart';

class S4533 extends StatelessWidget {
  const S4533({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.blue,
        constraints: const BoxConstraints(minHeight: 150, minWidth: 150),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('App'),
            Text('Akademie'),
          ],
        ),
      ),
    );
  }
}
