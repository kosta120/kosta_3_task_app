import 'package:flutter/material.dart';

bool isAnagram(String word1, String word2) {
  // Entferne Leerzeichen und konvertiere zu Kleinbuchstaben
  String cleanedWord1 = word1.replaceAll(RegExp(r'\s'), '').toLowerCase();
  String cleanedWord2 = word2.replaceAll(RegExp(r'\s'), '').toLowerCase();

  // Überprüfe, ob beide Wörter die gleiche Anzahl von Buchstaben haben
  return _countLetters(cleanedWord1) == _countLetters(cleanedWord2);
}

Map<String, int> _countLetters(String word) {
  Map<String, int> letterCount = {};
  for (int i = 0; i < word.length; i++) {
    String letter = word[i];
    letterCount[letter] = (letterCount[letter] ?? 0) + 1;
  }
  return letterCount;
}

class S3386 extends StatefulWidget {
  const S3386({Key? key}) : super(key: key);

  @override
  State<S3386> createState() => _S3386State();
}

class _S3386State extends State<S3386> {
  final TextEditingController _input1Controller = TextEditingController();
  final TextEditingController _input2Controller = TextEditingController();
  String? output;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: _input1Controller,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Wort 1',
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        TextField(
          controller: _input2Controller,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Wort 2',
          ),
        ),
        const SizedBox(
          height: 32,
        ),
        Text(
          output?.toString() ?? '',
          style: const TextStyle(fontSize: 24),
        ),
        const SizedBox(
          height: 32,
        ),
        ElevatedButton(
          onPressed: () {
            final input1 = _input1Controller.text;
            final input2 = _input2Controller.text;
            setState(() {
              output = isAnagram(input1, input2) ? 'Anagram' : 'Kein Anagram';
            });
          },
          child: const Text('Prüfe Anagram'),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _input1Controller.dispose();
    super.dispose();
  }
}
