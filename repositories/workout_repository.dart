import '../entities/workout.dart';

abstract class WorkoutRepository {
  Future<Workout> startWorkout();
}