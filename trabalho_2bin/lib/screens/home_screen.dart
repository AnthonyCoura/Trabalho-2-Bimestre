import 'package:flutter/material.dart';
import '../mock/products.dart';
import '../widgets/product_card.dart';
import '../widgets/app_topbar.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  void _openProduct(BuildContext context, String id) {
    context.go('/product/$id');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppTopbar(title: 'Promoções'),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Pesquisar produto ou categoria',
                prefixIcon: Icon(Icons.search),
                contentPadding: EdgeInsets.symmetric(vertical: 12),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: mockProducts.length,
              itemBuilder: (context, index) {
                final p = mockProducts[index];
                return ProductCard(
                  product: p,
                  onTap: () => _openProduct(context, p.id),
                  onFavorite: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('${p.name} adicionado aos favoritos (mock)')));
                  },
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        onTap: (i){
          if (i == 1) context.go('/favorites');
          if (i == 2) context.go('/profile');
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favoritos'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil'),
        ],
      ),
    );
  }
}