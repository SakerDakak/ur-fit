import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:urfit/core/domain/error/session.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/style/colors.dart';
import 'package:urfit/core/presentation/style/fonts.dart';
import 'package:urfit/core/presentation/utils/constants.dart';
import 'package:urfit/modules/subscription_module/data/models/package_model.dart';
import 'package:urfit/modules/subscription_module/data/subscription_repo.dart';
import 'package:urfit/di.dart';

/// ويدجت لعرض تفاصيل الاشتراك الحالي للمستخدم
class CurrentSubscriptionDetails extends StatefulWidget {
  const CurrentSubscriptionDetails({super.key});

  @override
  State<CurrentSubscriptionDetails> createState() =>
      _CurrentSubscriptionDetailsState();
}

class _CurrentSubscriptionDetailsState
    extends State<CurrentSubscriptionDetails> {
  int _retryCount = 0;

  @override
  Widget build(BuildContext context) {
    final user = Session().currentUser;

    if (user?.hasValidSubscription != true || user?.packageId == null) {
      return const SizedBox.shrink();
    }

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppConst.kBorderRadius),
        color: Co.cardColor,
        border: Border.all(color: Co.strockColor),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // عنوان القسم
          Text(
            "تفاصيل اشتراكك الحالي",
            style: TStyle.bold_16.copyWith(
              color: Theme.of(context).colorScheme.primary,
            ),
          ),

          const SizedBox(height: 16),

          // معلومات الاشتراك
          _buildSubscriptionInfo(context, user!.packageId!),

          const SizedBox(height: 16),

          // حالة الاشتراك
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.green.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.green.withValues(alpha: 0.3)),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  Icons.check_circle,
                  color: Colors.green,
                  size: 16,
                ),
                const SizedBox(width: 8),
                Text(
                  "اشتراك فعال",
                  style: TStyle.regular_14.copyWith(color: Colors.green),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSubscriptionInfo(BuildContext context, int packageId) {
    return FutureBuilder<List<PackageModel>>(
      future: _getPackageDetails(packageId),
      key: ValueKey(_retryCount), // إجبار إعادة التحميل عند تغيير _retryCount
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }

        if (snapshot.hasError || !snapshot.hasData || snapshot.data!.isEmpty) {
          return Column(
            children: [
              const Icon(
                Icons.error_outline,
                color: Colors.red,
                size: 24,
              ),
              const SizedBox(height: 8),
              Text(
                "لا يمكن تحميل تفاصيل الاشتراك",
                style: TStyle.regular_14.copyWith(color: Colors.red),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 4),
              Text(
                "يرجى المحاولة مرة أخرى",
                style: TStyle.regular_12.copyWith(color: Colors.grey),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 12),
              ElevatedButton.icon(
                onPressed: () {
                  setState(() {
                    _retryCount++;
                  });
                },
                icon: const Icon(Icons.refresh, size: 16),
                label: const Text("إعادة المحاولة"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  foregroundColor: Colors.white,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                ),
              ),
            ],
          );
        }

        final package = snapshot.data!.first;

        return Column(
          children: [
            // اسم الباقة
            Row(
              children: [
                Text(
                  "الباقة: ",
                  style: TStyle.regular_14,
                ),
                Expanded(
                  child: AutoSizeText(
                    package.name,
                    style: TStyle.bold_14.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    maxLines: 2,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 8),

            // نوع الباقة
            Row(
              children: [
                Text(
                  "النوع: ",
                  style: TStyle.regular_14,
                ),
                Text(
                  _getPlanTypeText(package.type),
                  style: TStyle.bold_14.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 8),

            // المدة والسعر
            Row(
              children: [
                Text(
                  "المدة: ",
                  style: TStyle.regular_14,
                ),
                Text(
                  "${package.duration} ${package.duration == 1 ? 'شهر' : 'شهر'}",
                  style: TStyle.bold_14.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 8),

            // السعر
            Row(
              children: [
                Text(
                  "السعر: ",
                  style: TStyle.regular_14,
                ),
                Text(
                  "${package.price} ${L10n.tr().sar}",
                  style: TStyle.bold_14.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }

  String _getPlanTypeText(PlanType type) {
    switch (type) {
      case PlanType.exercise:
        return "خطة التمرين";
      case PlanType.diet:
        return "خطة النظام الغذائي";
      case PlanType.both:
        return "خطة شاملة";
    }
  }

  Future<List<PackageModel>> _getPackageDetails(int packageId) async {
    try {
      // الحصول على SubscriptionRepo من dependency injection
      final subscriptionRepo = di<SubscriptionRepo>();

      // استدعاء API للحصول على جميع الباقات
      final result = await subscriptionRepo.getPackages();

      return result.fold(
        (failure) {
          // في حالة الفشل، نعيد قائمة فارغة وسيتم عرض رسالة الخطأ
          print("خطأ في تحميل تفاصيل الباقة: ${failure.message}");
          return <PackageModel>[];
        },
        (packages) {
          // البحث عن الباقة المطلوبة باستخدام packageId
          final package = packages.where((p) => p.id == packageId).toList();
          if (package.isEmpty) {
            print("لم يتم العثور على الباقة مع المعرف: $packageId");
            print("الباقات المتاحة: ${packages.map((p) => p.id).toList()}");
          }
          return package;
        },
      );
    } catch (e) {
      print("خطأ في تحميل تفاصيل الباقة: $e");
      return <PackageModel>[];
    }
  }
}
