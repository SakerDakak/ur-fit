part of 'app_cubit.dart';

class AppState extends Equatable {
  final String currentLocal;
  final bool? isDark;
  final bool isFemale;
  final bool notificationsEnabled;
  final int userDataUpdated; // عداد لتتبع تحديث بيانات المستخدم

  const AppState({
    this.currentLocal = "ar",
    this.isDark,
    this.isFemale = false,
    this.notificationsEnabled = true,
    this.userDataUpdated = 0,
  });

  AppState copyWith({
    String? currentLocal,
    bool? isDark,
    bool? isFemale,
    bool? notificationsEnabled,
    int? userDataUpdated,
  }) =>
      AppState(
        currentLocal: currentLocal ?? this.currentLocal,
        isDark: isDark ?? this.isDark,
        isFemale: isFemale ?? this.isFemale,
        notificationsEnabled: notificationsEnabled ?? this.notificationsEnabled,
        userDataUpdated: userDataUpdated ?? this.userDataUpdated,
      );

  @override
  List<Object?> get props =>
      [currentLocal, isDark, isFemale, notificationsEnabled, userDataUpdated];
}

// class ChangeCurrentLocalState extends AppState {}
// class ChangeIsDarkState extends AppState {}
// class ChangeNotificationState extends AppState {}
