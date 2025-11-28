import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/style/fonts.dart';
import 'package:urfit/core/presentation/utils/enums.dart';
import 'package:urfit/core/presentation/views/widgets/custom_buttons.dart';
import 'package:urfit/core/presentation/views/widgets/failure_widget.dart';
import 'package:urfit/modules/home_module/screens/main_page.dart';
import 'package:urfit/modules/inuries/presentaion/cubit/injuries_cubit.dart';
import 'package:urfit/modules/inuries/presentaion/cubit/injuries_state.dart';
import 'package:urfit/modules/personal_info/cubit/setup_personal_info_cubit.dart';
import 'package:urfit/modules/personal_info/screens/widgets/injuries_body_parts_image_widget.dart';
import 'package:urfit/modules/personal_info/screens/widgets/radio_box_with_img.dart';

class UserInfoInjuries extends StatefulWidget {
  const UserInfoInjuries({super.key, this.isEditMode = false});
  final bool isEditMode;
  @override
  State<UserInfoInjuries> createState() => _UserInfoInjuriesState();
}

class _UserInfoInjuriesState extends State<UserInfoInjuries> {
  late final SetupPersonalInfoCubit personalInfoCubit;
  late final InjuriesCubit injuriesCubit;

  @override
  void initState() {
    personalInfoCubit = context.read<SetupPersonalInfoCubit>();
    injuriesCubit = context.read<InjuriesCubit>();
    injuriesCubit.getQuestions();
    super.initState();
  }

  /// إكمال إعداد البيانات والانتقال للصفحة الرئيسية
  Future<void> _completeSetupAndNavigate(BuildContext context) async {
    try {
      // إرسال جميع البيانات المجمعة من الصفحات السابقة
      await personalInfoCubit.sendUpdateData();

      // الانتقال للصفحة الرئيسية مع حذف ستاك الصفحات
      if (context.mounted) {
        context.go(MainPage.routeWithBool(false));
      }
    } catch (e) {
      // في حالة الخطأ، انتقل للصفحة الرئيسية على أي حال
      if (context.mounted) {
        context.go(MainPage.routeWithBool(false));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InjuriesCubit, InjuriesState>(
      builder: (context, state) {
        if (state.fetchStatus == RequestState.failure) {
          return FailureWidget(
            message: state.message ?? '',
            onRetry: () {
              injuriesCubit.getQuestions();
            },
          );
        }

        final questions = state.questions;
        final isAllSelected =
            state.answers.values.where((e) => e == true).length ==
                questions.length;

        return Skeletonizer(
          enabled: state.fetchStatus == RequestState.loading,
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(L10n.tr().injuriesOrDiseases,
                      style: TStyle.semiBold_16, textAlign: TextAlign.start),
                  AbsorbPointer(
                    absorbing: state.fetchStatus == RequestState.loading,
                    child: GestureDetector(
                      onTap: () async {
                        if (isAllSelected) {
                          // إلغاء تحديد الكل
                          for (var question in questions) {
                            injuriesCubit.toggleInjury(question.id, false);
                          }
                        } else {
                          // تحديد الكل
                          for (var question in questions) {
                            injuriesCubit.toggleInjury(question.id, true);
                          }
                        }
                      },
                      child: Text(
                        isAllSelected
                            ? L10n.tr().unselectAll
                            : L10n.tr().selectAll,
                        style: TStyle.semiBold_16.copyWith(
                            color: isAllSelected
                                ? Colors.blueGrey
                                : Theme.of(context).colorScheme.primary),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 16),
              Expanded(
                flex: 5,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Animate(
                        effects: const [FadeEffect()],
                        child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: questions.length,
                            itemBuilder: (context, index) {
                              final question = questions[index];
                              return RadioBoxWithImage(
                                shortMode: true,
                                title: question.question,
                                imageUrl: null, // لا توجد صور للإصابات
                                onTap: () {
                                  // إذا كان محدد، إلغاء التحديد (لا)
                                  // إذا لم يكن محدد، تحديده (نعم)
                                  final isCurrentlySelected =
                                      state.answers[question.id] == true;
                                  injuriesCubit.toggleInjury(
                                      question.id, !isCurrentlySelected);
                                },
                                isSelected: state.answers[question.id] == true,
                              );
                            }),
                      ),
                    ),
                    const Expanded(
                      child: Skeleton.keep(
                        child: InjuriesBodyPartsImageWidget(),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),

              // زر إنشاء الخطة
              BlocConsumer<InjuriesCubit, InjuriesState>(
                listener: (context, state) {
                  if (state.sendStatus == RequestState.success) {
                    // بعد إكمال الإصابات، أرسل جميع البيانات وانتقل للصفحة الرئيسية
                    _completeSetupAndNavigate(context);
                  }
                },
                builder: (context, state) {
                  return CustomElevatedButton(
                    text: widget.isEditMode
                        ? L10n.tr().save
                        : L10n.tr().createMyPlan,
                    isLoading: state.sendStatus != RequestState.initial,
                    padding: EdgeInsets.zero,
                    onPressed: () async {
                      if (state.sendStatus == RequestState.loading) return;

                      // إذا لم يتم اختيار أي إصابات، أرسل البيانات مباشرة
                      if (!state.answers.values.any((e) => e == true)) {
                        await _completeSetupAndNavigate(context);
                        return;
                      }

                      // إذا تم اختيار إصابات، أرسلها أولاً
                      // سيتم إرسال البيانات في الـ listener بعد نجاح الإصابات
                      await injuriesCubit.sendInjuries();
                    },
                  );
                },
              ),
              const SizedBox(height: 40)
            ],
          ),
        );
      },
    );
  }
}
