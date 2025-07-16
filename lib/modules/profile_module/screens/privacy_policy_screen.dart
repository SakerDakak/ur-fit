import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:urfit/core/presentation/style/fonts.dart';
import 'package:urfit/core/presentation/utils/constants.dart';
import 'package:urfit/modules/profile_module/controller/setting_cubit.dart';

import '../../../core/presentation/utils/enums.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key, required this.pageKey});
  final String pageKey;
  static const routeWzKey = '/privacyPolicyScreen';

  @override
  Widget build(BuildContext context) {
    context.read<SettingCubit>().getStaticPage(pageKey);
    return BlocBuilder<SettingCubit, SettingState>(
      buildWhen: (previous, current) =>
          previous.getStaticPageState != current.getStaticPageState ||
          previous.staticPageModel != current.staticPageModel,
      builder: (context, state) {
        if (state.getStaticPageState == RequestState.loading || state.getStaticPageState == RequestState.failure) {
          return Scaffold(body: const Center(child: CircularProgressIndicator()));
        } else {
          return Scaffold(
            appBar: AppBar(
              title: Text(state.staticPageModel!.title),
            ),
            body: ListView(
              padding: const EdgeInsets.symmetric(horizontal: AppConst.kHorizontalPadding),
              children: [
                Text(
                  state.staticPageModel!.content,
                  style: TStyle.regular_14,
                ),
                const SizedBox(height: 16),
              ],
            ),
          );
        }
      },
    );
  }
}
