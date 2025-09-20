part of 'app_cubit.dart';

class AppState extends Equatable {
  final String currentLocal;
  final bool? isDark;
  final bool isFemale;

  const AppState({
    this.currentLocal = "ar",
    this.isDark,
    this.isFemale = false,
  });

  AppState copyWith(
          {String? currentLocal,
          bool? isDark,
          bool? isFemale,
          bool? notification}) =>
      AppState(
        currentLocal: currentLocal ?? this.currentLocal,
        isDark: isDark ?? this.isDark,
        isFemale: isFemale ?? this.isFemale,
      );

  @override
  List<Object?> get props => [currentLocal, isDark, isFemale];
}

// class ChangeCurrentLocalState extends AppState {}
// class ChangeIsDarkState extends AppState {}
// class ChangeNotificationState extends AppState {}
