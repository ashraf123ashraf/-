import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'library_state.dart';

class LibraryCubit extends Cubit<LibraryState> {
  LibraryCubit() : super(LibraryInitial());
  LibraryCubit get(context) => BlocProvider.of(context);
  void haveRead() {
    emit(Loading());
    emit(HaveRead());
  }

  void stillRead() {
    emit(StillRead());
  }

  void intentedToread() {
    emit(IntendedToRead());
  }

  void favouriteRead() {
    emit(FavouriteLoaded());
  }
}
