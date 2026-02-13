import 'package:flutter/material.dart';
import 'app_theme.dart';
import '../features/splash/splash_page.dart';

class NebulaApp extends StatefulWidget {
  const NebulaApp({super.key});

  @override
  State<NebulaApp> createState() => _NebulaAppState();
}

class _NebulaAppState extends State<NebulaApp> {
  ThemeMode _themeMode = ThemeMode.light;

  void _toggleTheme() {
    setState(() {
      _themeMode = _themeMode == ThemeMode.light
          ? ThemeMode.dark
          : ThemeMode.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nebula',
      theme: AppTheme.lightTheme(),
      darkTheme: AppTheme.darkTheme(),
      themeMode: _themeMode,
      home: SplashPage(onToggleTheme: _toggleTheme),
    );
  }
}
