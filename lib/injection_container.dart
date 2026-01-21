import 'package:get_it/get_it.dart';
import 'features/workout_session/domain/usecases/start_workout.dart';
import 'features/workout_session/domain/repositories/workout_repository.dart';
import 'features/workout_session/data/repositories/workout_repository_impl.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // UseCases
  sl.registerLazySingleton(() => StartWorkout(sl()));

  // Repositories
  sl.registerLazySingleton<WorkoutRepository>(
    () => WorkoutRepositoryImpl(),
  );
}