part of 'workout_bloc.dart';

abstract class WorkoutState extends Equatable {
  @override
  List<Object?> get props => [];
}

class WorkoutInitial extends WorkoutState {}
class WorkoutLoading extends WorkoutState {}

class WorkoutStarted extends WorkoutState {
  final Workout workout;
  WorkoutStarted(this.workout);

  @override
  List<Object?> get props => [workout];
}