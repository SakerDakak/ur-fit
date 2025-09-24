import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/style/fonts.dart';
import 'package:urfit/core/presentation/utils/constants.dart';
import 'package:urfit/modules/profile_module/controller/setting_cubit.dart';

import '../../../core/presentation/utils/enums.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key, required this.pageKey});
  final String pageKey;
  static const routeWzKey = '/privacyPolicyScreen';

  /// تحديد اسم الصفحة بناءً على pageKey
  String _getPageTitle(String pageKey) {
    switch (pageKey) {
      case 'privacy_policy':
        return L10n.tr().privacyPolicy;
      case 'terms_and_conditions':
        return L10n.tr().termsAndConditions;
      case 'about_us':
        return L10n.tr().aboutUs;
      default:
        return L10n.tr().privacyPolicy;
    }
  }

  @override
  Widget build(BuildContext context) {
    context.read<SettingCubit>().getStaticPage(pageKey);
    return BlocBuilder<SettingCubit, SettingState>(
      buildWhen: (previous, current) =>
          previous.getStaticPageState != current.getStaticPageState ||
          previous.staticPageModel != current.staticPageModel,
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              _getPageTitle(pageKey),
            ),
          ),
          body: SafeArea(
            child: _buildBody(context, state),
          ),
        );
      },
    );
  }

  /// بناء جسم الصفحة بناءً على حالة الطلب
  Widget _buildBody(BuildContext context, SettingState state) {
    switch (state.getStaticPageState) {
      case RequestState.loading:
        return _buildLoadingWidget(context);

      case RequestState.success:
        return _buildSuccessWidget(context, state);

      case RequestState.failure:
        return _buildErrorWidget(context, state);

      default:
        return _buildLoadingWidget(context);
    }
  }

  /// بناء ويدجت التحميل
  Widget _buildLoadingWidget(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircularProgressIndicator(),
          const SizedBox(height: 16),
          Text(
            L10n.tr().loading,
            style: TStyle.regular_16,
          ),
        ],
      ),
    );
  }

  /// بناء ويدجت النجاح مع عرض المحتوى كـ HTML
  Widget _buildSuccessWidget(BuildContext context, SettingState state) {
    final content = state.staticPageModel?.content ?? '';

    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(
        horizontal: AppConst.kHorizontalPadding,
        vertical: 16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            width: double.infinity,
          ),
          // عرض المحتوى كـ HTML
          HtmlWidget(
            content,
            textStyle: TStyle.regular_14,
            onTapUrl: (url) async {
              // يمكن إضافة معالجة الروابط هنا إذا لزم الأمر
              return true;
            },
            onErrorBuilder: (context, element, error) {
              // في حالة خطأ في تحليل HTML، عرض النص العادي
              return Text(
                content,
                style: TStyle.regular_14,
              );
            },
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }

  /// بناء ويدجت الخطأ مع زر المحاولة
  Widget _buildErrorWidget(BuildContext context, SettingState state) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // أيقونة الخطأ
            Icon(
              Icons.error_outline,
              size: 64,
              color: Colors.red.withOpacity(0.7),
            ),
            const SizedBox(height: 16),

            // رسالة الخطأ
            Text(
              state.errorMessage.isNotEmpty
                  ? state.errorMessage
                  : L10n.tr().somethingWentWrong,
              style: TStyle.regular_16.copyWith(
                color: Colors.red,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),

            // رسالة إضافية
            Text(
              L10n.tr().pleaseTryAgain,
              style: TStyle.regular_14.copyWith(
                color: Colors.grey[600],
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),

            // زر المحاولة
            ElevatedButton.icon(
              onPressed: () {
                // إعادة محاولة تحميل الصفحة
                context.read<SettingCubit>().getStaticPage(pageKey);
              },
              icon: const Icon(Icons.refresh),
              label: Text(L10n.tr().retryAgain),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 12,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
