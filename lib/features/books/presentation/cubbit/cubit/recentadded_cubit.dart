import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'recentadded_state.dart';

class RecentaddedCubit extends Cubit<RecentaddedState> {
  RecentaddedCubit() : super(RecentaddedInitial());
}
