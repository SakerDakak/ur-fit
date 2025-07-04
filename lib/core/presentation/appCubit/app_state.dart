part of 'app_cubit.dart';

class AppState extends Equatable {
  final String currentLocal;
  final bool? isDark;
  final bool isFemale;
  final bool? notification;

  const AppState( {this.currentLocal = "ar", this.isDark,this.isFemale = false, this.notification});

  AppState copyWith({String? currentLocal, bool? isDark,bool? isFemale, bool? notification}) =>
      AppState(
          currentLocal: currentLocal ?? this.currentLocal,
          isDark: isDark ?? this.isDark,
          isFemale: isFemale ?? this.isFemale,
          notification: notification ?? this.notification);

  @override
  List<Object?> get props => [currentLocal, isDark, notification,isFemale];
}

// class ChangeCurrentLocalState extends AppState {}
// class ChangeIsDarkState extends AppState {}
// class ChangeNotificationState extends AppState {}
