import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/utils/enums.dart';
import 'package:urfit/core/presentation/views/widgets/adaptive_progress_indicator.dart';
import 'package:urfit/core/presentation/views/widgets/custom_buttons.dart';
import 'package:urfit/core/presentation/views/widgets/failure_widget.dart';
import 'package:urfit/modules/inuries/presentaion/cubit/injuries_cubit.dart';
import 'package:urfit/modules/inuries/presentaion/cubit/injuries_state.dart';
import 'package:urfit/modules/inuries/presentaion/views/question_widget.dart';
import 'package:urfit/modules/subscription_module/data/models/package_model.dart';
import 'package:urfit/modules/subscription_module/screens/subscription_plans_screen.dart';

class InjuriesScreen extends StatelessWidget {
  const InjuriesScreen({super.key, required this.planType});
  static const routeWzExtra = '/injuries';
  final PlanType planType;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(L10n.tr().injuriesOrDiseases),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: BlocBuilder<InjuriesCubit, InjuriesState>(
                  builder: (context, state) {
                    if (state.fetchStatus == RequestState.failure) {
                      return FailureWidget(
                          message: state.message ?? '',
                          onRetry: () {
                            context.read<InjuriesCubit>().getQuestions();
                          });
                    }
                    return Skeletonizer(
                      enabled: state.fetchStatus == RequestState.loading,
                      child: ListView.separated(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        itemCount: state.questions.length,
                        separatorBuilder: (context, index) => Divider(
                            height: 33,
                            indent: 16,
                            endIndent: 16,
                            color: Theme.of(context).colorScheme.primary.withAlpha(50)),
                        itemBuilder: (context, index) {
                          final question = state.questions[index];
                          return QuestionWidget(
                            question: question,
                            isYes: state.answers[question.id],
                            onToggle: (questionId, isYes) {
                              context.read<InjuriesCubit>().toggleInjury(questionId, isYes);
                            },
                          );
                        },
                      ),
                    );
                  },
                ),
              ),
              BlocConsumer<InjuriesCubit, InjuriesState>(
                listener: (context, state) {
                  if (state.sendStatus == RequestState.failure) {
                  } else if (state.sendStatus == RequestState.success) {
                    context.push(SubscriptionPlansScreen.routeWzExtra, extra: planType);
                  }
                },
                builder: (context, state) {
                  if (state.sendStatus == RequestState.loading) {
                    return const Center(child: AdaptiveProgressIndicator());
                  }
                  return CustomElevatedButton(
                    text: L10n.tr().send,
                    padding: EdgeInsets.zero,
                    onPressed: () async {
                      if (!state.answers.values.any((e) => e == true)) {
                        print('No injuries selected');
                        context.push(SubscriptionPlansScreen.routeWzExtra, extra: planType);
                        return;
                      }
                      if (state.sendStatus == RequestState.loading) return;
                      context.read<InjuriesCubit>().sendInjuries();
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
