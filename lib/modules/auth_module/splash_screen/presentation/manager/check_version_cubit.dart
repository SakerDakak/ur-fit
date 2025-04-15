import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
// Import PackageInfo
import 'package:flutter/foundation.dart';

import '../../../../../core/api/api_client.dart';
import '../../../../../core/api/endpoints.dart';
import '../../../../../core/const.dart'; // Import for TargetPlatform

part 'check_version_state.dart'; // Ensure this file is correctly defined

class CheckVersionCubit extends Cubit<CheckVersionState> {
  CheckVersionCubit(this.dioServices) : super(VersionInitial());
  final DioServices dioServices;

  Future<void> checkVersion() async {
    emit(VersionLoading());
    emit(VersionUpToDate());
    //
    // try {
    //   latestFunctionCalled = (){checkVersion();};
    //   final response = await dioServices.get(EndPoints.checkVersion);
    //
    //   const String currentAndroidVersion = '1.5.0';
    //   const String currentIosVersion = '1.7.0';
    //   final context = rootScaffoldKey.currentContext;
    //   if (response.statusCode == 200) {
    //     final data = response.data;
    //     final platform = kIsWeb
    //         ? 'web'
    //         : Theme.of(context!).platform == TargetPlatform.android
    //         ? 'android'
    //         : 'ios';
    //     final latestVersion = data[platform]['latest_version'];
    //     final minimumVersion = data[platform]['minimum_version'];
    //
    //     // Manually set current version based on platform
    //     final currentVersion = platform == 'android'
    //         ? currentAndroidVersion
    //         : currentIosVersion;
    //     print('latestVersion $latestVersion');
    //     print('minimumVersion $minimumVersion');
    //     print('currentVersion $currentVersion');
    //     // Compare versions
    //     print('compareVersions(currentVersion, minimumVersion) ${compareVersions(currentVersion, minimumVersion)}');
    //     print('compareVersions(currentVersion, latestVersion) ${compareVersions(currentVersion, latestVersion)}');
    //     if (compareVersions(currentVersion, minimumVersion) < 0) {
    //       emit(VersionForceUpdateRequired(minimumVersion));
    //     } else if (compareVersions(currentVersion, latestVersion) < 0) {
    //       emit(VersionUpdateAvailable(latestVersion));
    //     } else {
    //       emit(VersionUpToDate());
    //     }
    //   } else {
    //     emit(const VersionError('Failed to load version info'));
    //   }
    // } catch (e) {
    //   emit(VersionError('Network error: $e'));
    // }
  }

  // Helper method to compare version strings
  int compareVersions(String v1, String v2) {
    final v1Parts = v1.split('.').map(int.parse).toList();
    final v2Parts = v2.split('.').map(int.parse).toList();
    for (int i = 0; i < v1Parts.length && i < v2Parts.length; i++) {
      if (v1Parts[i] < v2Parts[i]) return -1;
      if (v1Parts[i] > v2Parts[i]) return 1;
    }

    // If all parts are equal up to the shorter version's length,
    // the longer version is considered greater
    print('compare ${v1Parts.length.compareTo(v2Parts.length)}');
    return v1Parts.length.compareTo(v2Parts.length);
  }
}
