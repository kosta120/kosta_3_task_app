import 'package:flutter/material.dart';

class S4511 extends StatelessWidget {
  const S4511({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Hello World'),
        ),
        body: const Center(
          child: Text(
            'Hello, World!',
            style: TextStyle(fontSize: 24, color: Colors.red),
          ),
        ),
      ),
    );
  }
}
