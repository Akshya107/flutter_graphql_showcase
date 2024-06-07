part of 'home_bloc.dart';

sealed class HomeState {}

final class HomeInitial extends HomeState {}

final class HomeLoading extends HomeState {}

final class HomeSuccess extends HomeState {
  final List<Film> list;

  HomeSuccess({required this.list});
}

final class HomeFailure extends HomeState {
  final String? message;

  HomeFailure({this.message});
}
