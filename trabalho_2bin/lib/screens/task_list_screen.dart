import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../widgets/task_card.dart';

class TaskListScreen extends StatelessWidget {
  const TaskListScreen({super.key});

  final mockTasks = const [
    {'title': 'Estudar Flutter', 'description': 'Revisar widgets.'},
    {'title': 'Fazer Trabalho', 'description': 'Implementar CRUD.'},
    {'title': 'Treinar', 'description': '1 hora de academia.'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Minhas Tarefas'),
        actions: [
          IconButton(
            onPressed: () => context.go('/tasks/new'),  
            icon: const Icon(Icons.add),
          )
        ],
      ),
      body: ListView.builder(
        itemCount: mockTasks.length,
        itemBuilder: (context, index) {
          final item = mockTasks[index];
          return TaskCard(
            title: item['title']!,
            description: item['description']!,
          );
        },
      ),
    );
  }
}
