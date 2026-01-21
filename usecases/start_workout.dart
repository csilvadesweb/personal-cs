import '../entities/workout.dart';
import '../repositories/workout_repository.dart';

class StartWorkout {
  final WorkoutRepository repository;

  StartWorkout(this.repository);

  Future<Workout> call() {
    return repository.startWorkout();
  }
}