part of 'home_layout_cubit.dart';

@immutable
sealed class HomeLayoutState {}

final class HomeLayoutInitial extends HomeLayoutState {}

final class ChangeIndexInitialState extends HomeLayoutState {}

final class ChangeIndexState extends HomeLayoutState {}
