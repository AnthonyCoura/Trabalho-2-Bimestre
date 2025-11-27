import 'package:flutter/material.dart';
import 'routes.dart';
import 'themes.dart';

void main() {
  runApp(ComparaApp());
}

class ComparaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'ComparaItajubá',
      theme: AppTheme,
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      debugShowCheckedModeBanner: false,
    );
  }
}