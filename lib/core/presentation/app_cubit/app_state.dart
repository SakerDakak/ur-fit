part of 'app_cubit.dart';

class AppState extends Equatable {
  final String currentLocal;
  final bool? isDark;
  final bool isFemale;
  final bool notificationsEnabled;

  const AppState({
    this.currentLocal = "ar",
    this.isDark,
    this.isFemale = false,
    this.notificationsEnabled = true,
  });

  AppState copyWith({
    String? currentLocal,
    bool? isDark,
    bool? isFemale,
    bool? notificationsEnabled,
  }) =>
      AppState(
        currentLocal: currentLocal ?? this.currentLocal,
        isDark: isDark ?? this.isDark,
        isFemale: isFemale ?? this.isFemale,
        notificationsEnabled: notificationsEnabled ?? this.notificationsEnabled,
      );

  @override
  List<Object?> get props =>
      [currentLocal, isDark, isFemale, notificationsEnabled];
}

// class ChangeCurrentLocalState extends AppState {}
// class ChangeIsDarkState extends AppState {}
// class ChangeNotificationState extends AppState {}
