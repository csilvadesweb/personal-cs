part of 'workout_bloc.dart';

abstract class WorkoutEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class StartWorkoutEvent extends WorkoutEvent {}