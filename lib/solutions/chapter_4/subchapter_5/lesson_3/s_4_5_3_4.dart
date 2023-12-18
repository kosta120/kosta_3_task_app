import 'package:flutter/material.dart';

class S4534 extends StatelessWidget {
  const S4534({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const SpaceinRow();
  }
}

class SpaceinRow extends StatefulWidget {
  const SpaceinRow({super.key});

  @override
  State<SpaceinRow> createState() => _SpaceinRowState();
}

class _SpaceinRowState extends State<SpaceinRow> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('App'),
          SizedBox(width: 64),
          Text('Akademie'),
        ],
      ),
    );
  }
}
