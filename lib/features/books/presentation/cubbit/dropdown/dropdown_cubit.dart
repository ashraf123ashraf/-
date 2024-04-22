import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'dropdown_state.dart';

class DropdownCubit extends Cubit<DropdownState> {
  DropdownCubit() : super(DropdownInitial());

  void booktabbed() {
    emit(BookTabbed());
  }

  void bookuntabbed() {
    emit(BookUntabbed());
  }

  void authortabbed() {
    emit(AuthorTabbed());
  }

  void authoruntabbed() {
    emit(AuthorUntabbed());
  }
}
