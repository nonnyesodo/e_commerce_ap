part of 'home_cubit.dart';

@immutable
sealed class HomeState {}

final class HomeInitial extends HomeState {}

final class HomeLoading extends HomeState {}

final class HomeILoaded extends HomeState {}
