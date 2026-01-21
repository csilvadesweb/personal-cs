import 'package:flutter/material.dart';
import '../../workout_session/presentation/pages/workout_page.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Chronos Dashboard')),
      body: Center(
        child: ElevatedButton(
          child: const Text('Iniciar Treino'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const WorkoutPage()),
            );
          },
        ),
      ),
    );
  }
}