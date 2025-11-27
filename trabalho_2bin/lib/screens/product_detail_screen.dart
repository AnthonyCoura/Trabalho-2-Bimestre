import 'package:flutter/material.dart';
import '../mock/products.dart';
import '../models/product.dart';
import '../widgets/app_topbar.dart';

class ProductDetailScreen extends StatelessWidget {
  final String id;
  const ProductDetailScreen({Key? key, required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Product? product = mockProducts.firstWhere((p) => p.id == id, orElse: () => mockProducts[0]);

    return Scaffold(
      appBar: AppTopbar(title: 'Detalhes'),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // imagem placeholder
            Container(
              width: double.infinity,
              height: 180,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(child: Icon(Icons.image_not_supported_outlined, size: 72)),
            ),
            SizedBox(height: 12),
            Text(product.name, style: Theme.of(context).textTheme.headline6),
            SizedBox(height: 6),
            Text('${product.brand} • ${product.supermarket}', style: Theme.of(context).textTheme.bodyText2),
            SizedBox(height: 12),
            Text('Preço: R\$ ${product.price.toStringAsFixed(2)}', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
            SizedBox(height: 18),
            Text('Descrição (mock):'),
            SizedBox(height: 6),
            Text('Informações adicionais do produto e comparações com outros supermercados apareceriam aqui.'),
            Spacer(),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Ir para supermercado (mock)')));
              },
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 14),
                child: Center(child: Text('Ver no Supermercado')),
              ),
              style: ElevatedButton.styleFrom(minimumSize: Size.fromHeight(48)),
            ),
          ],
        ),
      ),
    );
  }
}