import 'package:flutter/material.dart';
import 'package:metabrick/routes/home_page_route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => MyAppState();

  static MyAppState of(BuildContext context) => context.findAncestorStateOfType<MyAppState>()!;
}

class MyAppState extends State<MyApp> {
  late MaterialColor _themeColor;
  late Color _containerColor;

  MaterialColor get themeColor => _themeColor;

  setThemeColor(MaterialColor newColor) {
    setState(() {
      _themeColor = newColor;
      _containerColor = _themeColor.shade400;
    });
  }

  @override
  void initState() {
    super.initState();
    _themeColor = Colors.blue;
    _containerColor = _themeColor.shade400;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Neumorphic App',
      theme: ThemeData.from(
        colorScheme: ColorScheme.fromSeed(
          seedColor: _containerColor,
          background: _containerColor,
          primaryContainer: _containerColor,
          secondaryContainer: _containerColor,
          tertiaryContainer: _containerColor,
          surface: _themeColor.shade600,
        ),
      ),
      home: const MyHomePage(),
    );
  }
}
