import 'dart:math';
import '../../domain/entities/workout.dart';
import '../../domain/repositories/workout_repository.dart';

class WorkoutRepositoryImpl implements WorkoutRepository {
  @override
  Future<Workout> startWorkout() async {
    return Workout(
      id: Random().nextInt(999999).toString(),
      startedAt: DateTime.now(),
    );
  }
}