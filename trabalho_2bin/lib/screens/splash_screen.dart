import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../widgets/app_topbar.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 1200), () {
      // navega para login
      context.go('/login');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppTopbar(title: 'ComparaItajubá'),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.shopping_cart_checkout, size: 76, color: Theme.of(context).colorScheme.primary),
            SizedBox(height: 12),
            Text('ComparaItajubá', style: Theme.of(context).textTheme.headline6),
            SizedBox(height: 8),
            Text('Economize dentro de casa a um clique de distância', textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}