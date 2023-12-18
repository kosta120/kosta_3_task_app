import 'package:flutter/material.dart';

class S4523 extends StatelessWidget {
  const S4523({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ShowHideNameWidget();
  }
}

class ShowHideNameWidget extends StatefulWidget {
  const ShowHideNameWidget({Key? key}) : super(key: key);

  @override
  _ShowHideNameWidgetState createState() => _ShowHideNameWidgetState();
}

class _ShowHideNameWidgetState extends State<ShowHideNameWidget> {
  String _name = '';
  String _buttonText = 'Name anzeigen';

  void _toggleNameVisibility() {
    setState(() {
      if (_name.isEmpty) {
        _name = 'Kosta';
        _buttonText = 'Name verstecken';
      } else {
        _name = '';
        _buttonText = 'Name anzeigen';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(_name),
        ElevatedButton(
          onPressed: _toggleNameVisibility,
          child: Text(_buttonText),
        ),
      ],
    );
  }
}
