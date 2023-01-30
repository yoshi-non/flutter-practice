import 'package:flutter/material.dart';

class TextFieldPage extends StatefulWidget {
  const TextFieldPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return MyTextFieldState();
  }
}

class MyTextFieldState extends State<TextFieldPage> {
  String _showText = "";
  String _tmpText = "";

  void _showTextHandler() {
    setState(() {
      _showText = _tmpText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("テキストフィールドを使ってみよう"),
      ),
      body: Column(
        children: [
          TextField(
            onChanged: (value) {
              setState(() {
                _tmpText = value;
              });
            },
          ),
          IconButton(
              onPressed: _showTextHandler,
              icon: const Icon(Icons.arrow_downward)),
          Text(_showText),
        ],
      ),
    );
  }
}
