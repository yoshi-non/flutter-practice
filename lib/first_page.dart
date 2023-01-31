import 'package:flutter/material.dart';
import 'package:sample02/my_home_page.dart';
import 'package:sample02/second_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("1枚目"),
      ),
      body: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, "/second");
          },
          icon: const Icon(Icons.arrow_forward)),
    );
  }
}
