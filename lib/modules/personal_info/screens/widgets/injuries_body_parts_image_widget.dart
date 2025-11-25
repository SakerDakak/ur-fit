import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:urfit/core/presentation/app_cubit/app_cubit.dart';
import 'package:urfit/core/presentation/assets/app_assets.dart';
import 'package:urfit/core/presentation/style/colors.dart';
import 'package:urfit/modules/inuries/presentaion/cubit/injuries_cubit.dart';
import 'package:urfit/modules/inuries/presentaion/cubit/injuries_state.dart';

class InjuriesBodyPartsImageWidget extends StatelessWidget {
  const InjuriesBodyPartsImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final isFemale = context.read<AppCubit>().state.isFemale;
    return AspectRatio(
      aspectRatio: 0.54,
      child: BlocBuilder<InjuriesCubit, InjuriesState>(
        builder: (context, state) {
          // التحقق من وجود الأسئلة قبل المعالجة
          if (state.questions.isEmpty) {
            return Directionality(
              textDirection: TextDirection.ltr,
              child: _MaleImage(bodyPartsIds: <String>{}, isFemale: isFemale),
            );
          }

          // تحويل الإجابات إلى مجموعة من أجزاء الجسم المحددة
          final selectedBodyParts = <String>{};
          for (var entry in state.answers.entries) {
            if (entry.value == true) {
              // البحث عن السؤال المقابل والحصول على جزء الجسم
              try {
                final question = state.questions.firstWhere(
                  (q) => q.id == entry.key,
                );
                selectedBodyParts.add(question.key.value);
              } catch (e) {
                // تجاهل الإجابات التي لا تحتوي على سؤال مقابل
                print('Warning: Question not found for answer ${entry.key}');
              }
            }
          }

          return Directionality(
            textDirection: TextDirection.ltr,
            child:
                _MaleImage(bodyPartsIds: selectedBodyParts, isFemale: isFemale),
          );
        },
      ),
    );
  }
}

class _CircleMark extends StatelessWidget {
  const _CircleMark(
      {required this.alignment, required this.show, required this.size});
  final AlignmentGeometry alignment;
  final bool show;
  final double size;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: AnimatedScale(
        scale: show ? 1.0 : 0.0,
        duration: Durations.long1,
        curve: Curves.easeInOutBack,
        child: DecoratedBox(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Co.redColor.withAlpha(100),
            border: Border.all(color: Co.redColor),
          ),
          child: SizedBox(height: size, width: size),
        ),
      ),
    );
  }
}

class _MaleImage extends StatelessWidget {
  const _MaleImage({required this.bodyPartsIds, required this.isFemale});
  final Set<String> bodyPartsIds;
  final bool isFemale;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(end: 20),
      child: Stack(
        children: [
          Center(
            child: Image.asset(
              isFemale
                  ? Assets.imageFemaleCharacter
                  : Assets.imageMaleCharacter,
              alignment: AlignmentDirectional.center,
            ),
          ),
          _CircleMark(
            alignment: const Alignment(-0.11, -0.74),
            size: 16,
            show: bodyPartsIds.contains('neck'),
          ),
          _CircleMark(
            alignment: const Alignment(0.43, -0.67),
            size: 18,
            show: bodyPartsIds.contains('shoulders'),
          ),
          _CircleMark(
            alignment: const Alignment(-0.43, -0.67),
            size: 18,
            show: bodyPartsIds.contains('shoulders'),
          ),
          _CircleMark(
            alignment: const Alignment(0.18, -0.51),
            size: 18,
            show: bodyPartsIds.contains('cardio'),
          ),
          _CircleMark(
            alignment: const Alignment(-0.2, -0.55),
            size: 24,
            show: bodyPartsIds.contains('chest'),
          ),
          _CircleMark(
            alignment: const Alignment(0.54, -0.45),
            size: 22,
            show: bodyPartsIds.contains('upper arms'),
          ),
          _CircleMark(
            alignment: const Alignment(-0.54, -0.45),
            size: 22,
            show: bodyPartsIds.contains('upper arms'),
          ),
          _CircleMark(
            alignment: const Alignment(-0.1, -0.05),
            size: 26,
            show: bodyPartsIds.contains('waist'),
          ),
          _CircleMark(
            alignment: const Alignment(-0.57, -0.13),
            size: 18,
            show: bodyPartsIds.contains('lower arms'),
          ),
          _CircleMark(
            alignment: const Alignment(0.59, -0.13),
            size: 18,
            show: bodyPartsIds.contains('lower arms'),
          ),
          _CircleMark(
            alignment: const Alignment(0.26, 0.24),
            size: 26,
            show: bodyPartsIds.contains('upper legs'),
          ),
          _CircleMark(
            alignment: const Alignment(-0.26, 0.24),
            size: 26,
            show: bodyPartsIds.contains('upper legs'),
          ),
          _CircleMark(
            alignment: const Alignment(0.3, 0.65),
            size: 22,
            show: bodyPartsIds.contains('lower legs'),
          ),
          _CircleMark(
            alignment: const Alignment(-0.3, 0.65),
            size: 22,
            show: bodyPartsIds.contains('lower legs'),
          ),
        ],
      ),
    );
  }
}
