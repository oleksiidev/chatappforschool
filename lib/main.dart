import 'package:chatappforschool/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:chatappforschool/theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: AppTheme.light(),
      darkTheme: AppTheme.dark(),
      themeMode: ThemeMode.dark,
      title: 'Chatter',
      home: HomeScreen(),
    );
  }
}
