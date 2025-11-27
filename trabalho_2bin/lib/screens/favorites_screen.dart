import 'package:flutter/material.dart';
import '../widgets/app_topbar.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppTopbar(title: 'Favoritos'),
      body: Center(
        child: Text('Nenhum favorito (mock). Experimente favoritar um produto.'),
      ),
    );
  }
}