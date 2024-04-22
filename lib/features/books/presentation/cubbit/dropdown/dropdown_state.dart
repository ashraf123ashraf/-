part of 'dropdown_cubit.dart';

@immutable
sealed class DropdownState {}

final class DropdownInitial extends DropdownState {}

final class BookTabbed extends DropdownState {
  final tabbed = true;
}

final class BookUntabbed extends DropdownState {
  final tabbed = false;
}

final class AuthorTabbed extends DropdownState {
  final tabbed = true;
}

final class AuthorUntabbed extends DropdownState {
  final tabbed = false;
}
