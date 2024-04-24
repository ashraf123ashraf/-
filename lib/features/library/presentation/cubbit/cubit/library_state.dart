part of 'library_cubit.dart';

@immutable
sealed class LibraryState {}

final class LibraryInitial extends LibraryState {}

final class Loading extends LibraryState {}

final class FavouriteLoaded extends LibraryState {
  final List? favoriteBooks;
  FavouriteLoaded({this.favoriteBooks});
}

final class HaveRead extends LibraryState {
  final List? readBooks;
  HaveRead({this.readBooks});
}

final class StillRead extends LibraryState {
  final List? stillbooks;
  StillRead({this.stillbooks});
}

final class IntendedToRead extends LibraryState {
  final List? intentiobooks;
  IntendedToRead({this.intentiobooks});
}
