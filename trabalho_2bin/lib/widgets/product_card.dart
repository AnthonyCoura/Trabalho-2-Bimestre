import 'package:flutter/material.dart';
import '../models/product.dart';
 
class ProductCard extends StatelessWidget {
  final Product product;
  final VoidCallback? onTap;
  final VoidCallback? onFavorite;
 
  const ProductCard({
    Key? key,
    required this.product,
    this.onTap,
    this.onFavorite,
  }) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 2,
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: [
              // imagem placeholder
              Container(
                width: 64,
                height: 64,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(Icons.local_grocery_store_outlined, size: 36, color: Colors.grey),
              ),
              SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(product.name, style: theme.headline6),
                    SizedBox(height: 4),
                    Text('${product.brand} • ${product.supermarket}', style: theme.bodyText2),
                    SizedBox(height: 8),
                    Text('R\$ ${product.price.toStringAsFixed(2)}', style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Theme.of(context).colorScheme.primary,
                    )),
                  ],
                ),
              ),
              IconButton(
                onPressed: onFavorite,
                icon: Icon(Icons.favorite_border),
                tooltip: 'Favoritar',
              ),
            ],
          ),
        ),
      ),
    );
  }
}