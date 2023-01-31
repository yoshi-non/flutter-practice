import 'package:flutter/material.dart';
import 'package:sample02/first_page.dart';
import 'package:sample02/second_page.dart';
import 'package:sample02/text_field_page.dart';
import 'my_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    final darkTheme = ThemeData.from(
      colorScheme: const ColorScheme.dark(primary: Colors.green),
    );
    return MaterialApp(
      initialRoute: "/",
      routes: <String, WidgetBuilder>{
        "/": (BuildContext context) => const FirstPage(),
        "/second": (BuildContext context) => const SecondPage(),
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      darkTheme: darkTheme,
      // home: const FirstPage(),
    );
  }
}
