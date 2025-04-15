part of 'check_version_cubit.dart';



abstract class CheckVersionState extends Equatable {
  const CheckVersionState();

  @override
  List<Object> get props => [];
}

class VersionInitial extends CheckVersionState {}

class VersionLoading extends CheckVersionState {}

class VersionUpdateAvailable extends CheckVersionState {
  final String latestVersion;

  const VersionUpdateAvailable(this.latestVersion);

  @override
  List<Object> get props => [latestVersion];
}

class VersionForceUpdateRequired extends CheckVersionState {
  final String minimumVersion;

  const VersionForceUpdateRequired(this.minimumVersion);

  @override
  List<Object> get props => [minimumVersion];
}

class VersionUpToDate extends CheckVersionState {}

class VersionError extends CheckVersionState {
  final String message;

  const VersionError(this.message);

  @override
  List<Object> get props => [message];
}
