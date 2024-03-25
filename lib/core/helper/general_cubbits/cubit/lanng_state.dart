part of 'lanng_cubit.dart';

@immutable
sealed class LanngState {}

final class LanngInitial extends LanngState {}

final class LangChangedSuccessfully extends LanngState {}

final class LangChangedFailed extends LanngState {}
