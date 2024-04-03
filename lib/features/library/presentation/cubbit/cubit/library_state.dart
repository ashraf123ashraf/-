part of 'library_cubit.dart';

@immutable
sealed class LibraryState {}

final class LibraryInitial extends LibraryState {}

final class Loading extends LibraryState {}

final class FavouriteLoaded extends LibraryState {}

final class HaveRead extends LibraryState {}

final class StillRead extends LibraryState {}

final class IntendedToRead extends LibraryState {}
