import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../injection_container.dart';
import '../bloc/workout_bloc.dart';

class WorkoutPage extends StatelessWidget {
  const WorkoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => WorkoutBloc(sl())..add(StartWorkoutEvent()),
      child: Scaffold(
        appBar: AppBar(title: const Text('Sessão de Treino')),
        body: BlocBuilder<WorkoutBloc, WorkoutState>(
          builder: (context, state) {
            if (state is WorkoutLoading) {
              return const Center(child: CircularProgressIndicator());
            }
            if (state is WorkoutStarted) {
              return Center(
                child: Text(
                  'Treino iniciado às ${state.workout.startedAt}',
                ),
              );
            }
            return const SizedBox();
          },
        ),
      ),
    );
  }
}