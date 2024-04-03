import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'library_state.dart';

class LibraryCubit extends Cubit<LibraryState> {
  LibraryCubit() : super(LibraryInitial());
  LibraryCubit get(context) => BlocProvider.of(context);
  haveRead() {
    // emit(Loading());
    emit(HaveRead());
  }

  stillRead() {
    emit(StillRead());
  }

  intentedToread() {
    emit(IntendedToRead());
  }

  favouriteRead() {
    emit(FavouriteLoaded());
  }
}
