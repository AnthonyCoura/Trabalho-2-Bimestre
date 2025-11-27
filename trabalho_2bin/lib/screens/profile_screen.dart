import 'package:flutter/material.dart';
import '../widgets/app_topbar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppTopbar(title: 'Perfil'),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            CircleAvatar(radius: 36, child: Icon(Icons.person, size: 36)),
            SizedBox(height: 12),
            Text('Usuário Demo'),
            SizedBox(height: 6),
            Text('email@exemplo.com'),
            SizedBox(height: 20),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Configurações'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.help_outline),
              title: Text('Ajuda'),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}