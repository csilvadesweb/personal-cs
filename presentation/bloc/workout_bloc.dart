import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import '../../domain/entities/workout.dart';
import '../../domain/usecases/start_workout.dart';

part 'workout_event.dart';
part 'workout_state.dart';

class WorkoutBloc extends Bloc<WorkoutEvent, WorkoutState> {
  final StartWorkout startWorkout;

  WorkoutBloc(this.startWorkout) : super(WorkoutInitial()) {
    on<StartWorkoutEvent>((event, emit) async {
      emit(WorkoutLoading());
      final workout = await startWorkout();
      emit(WorkoutStarted(workout));
    });
  }
}