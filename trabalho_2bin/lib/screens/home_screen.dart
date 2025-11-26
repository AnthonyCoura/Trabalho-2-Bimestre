import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../widgets/custom_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('TaskApp - Home')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            CustomButton(
              text: 'Lista de Tarefas',
              onPressed: () => context.go('/tasks'),
            ),
            const SizedBox(height: 12),
            CustomButton(
              text: 'Configurações',
              onPressed: () => context.go('/settings'),
            ),
          ],
        ),
      ),
    );
  }
}
