import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:urfit/core/presentation/app_cubit/app_cubit.dart';
import 'package:urfit/core/presentation/assets/app_assets.dart';
import 'package:urfit/core/presentation/style/colors.dart';
import 'package:urfit/modules/personal_info/cubit/setup_personal_info_cubit.dart';

class BodyPartsImageWidget extends StatelessWidget {
  const BodyPartsImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
// {key: back, value: back},
// {key: cardio, value: cardio},
// {key: chest, value: chest},
// {key: lower arms, value: lower arms},
// {key: lower legs, value: lower legs},
// {key: neck, value: neck},
// {key: shoulders, value: shoulders},
// {key: upper arms, value: upper arms},
// {key: upper legs, value: upper legs},
// {key: waist, value: waist}
    final isFemale = context.read<AppCubit>().state.isFemale;
    return AspectRatio(
      aspectRatio: isFemale ? 0.526 : 0.54,
      child: BlocBuilder<SetupPersonalInfoCubit, SetupPersonalInfoState>(
        builder: (context, state) => Directionality(
          textDirection: TextDirection.ltr,
          child: context.read<AppCubit>().state.isFemale
              ? _FemaleImage(bodyPartsIds: state.userInfo.bodyPartsIds)
              : _MaleImage(bodyPartsIds: state.userInfo.bodyPartsIds),
        ),
      ),
    );
  }
}

class _CircleMark extends StatelessWidget {
  const _CircleMark({required this.alignment, required this.show, required this.size, this.child});
  final AlignmentGeometry alignment;
  final bool show;
  final double size;
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: AnimatedScale(
        scale: show ? 1.0 : 0.0,
        duration: Durations.long1,
        curve: Curves.easeInOutBack,
        child: child ??
            DecoratedBox(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Co.primaryColor.withAlpha(100),
                border: Border.all(color: Co.primaryColor),
              ),
              child: SizedBox(height: size, width: size),
            ),
      ),
    );
  }
}

class _MaleImage extends StatelessWidget {
  const _MaleImage({super.key, required this.bodyPartsIds});
  final Set<String> bodyPartsIds;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          Assets.imageMaleCharacter,
          alignment: AlignmentDirectional.topStart,
        ),
        _CircleMark(
          alignment: const Alignment(-0.25, -0.61),
          size: 16,
          show: bodyPartsIds.contains('neck'),
          // child: Icon(Icons.favorite_border, color: Co.primaryColor, size: 16),
        ),
        _CircleMark(
          alignment: const Alignment(0.35, -0.6),
          size: 18,
          show: bodyPartsIds.contains('shoulders'),
        ),
        _CircleMark(
          alignment: const Alignment(-0.5, -0.53),
          size: 18,
          show: bodyPartsIds.contains('shoulders'),
        ),
        _CircleMark(
          alignment: const Alignment(0.14, -0.43),
          size: 18,
          show: bodyPartsIds.contains('cardio'),
        ),
        _CircleMark(
          alignment: const Alignment(-0.2, -0.4),
          size: 24,
          show: bodyPartsIds.contains('chest'),
        ),
        _CircleMark(
          alignment: const Alignment(0.5, -0.45),
          size: 22,
          show: bodyPartsIds.contains('upper arms'),
        ),
        _CircleMark(
          alignment: const Alignment(-0.55, -0.36),
          size: 22,
          show: bodyPartsIds.contains('upper arms'),
        ),
        _CircleMark(
          alignment: const Alignment(-0.1, -0.05),
          size: 32,
          show: bodyPartsIds.contains('waist'),
        ),
        _CircleMark(
          alignment: const Alignment(-0.6, -0.1),
          size: 18,
          show: bodyPartsIds.contains('lower arms'),
        ),
        _CircleMark(
          alignment: const Alignment(0.5, -0.1),
          size: 18,
          show: bodyPartsIds.contains('lower arms'),
        ),
        _CircleMark(
          alignment: const Alignment(0.26, 0.24),
          size: 22,
          show: bodyPartsIds.contains('upper legs'),
        ),
        _CircleMark(
          alignment: const Alignment(-0.32, 0.22),
          size: 22,
          show: bodyPartsIds.contains('upper legs'),
        ),
        _CircleMark(
          alignment: const Alignment(0.45, 0.65),
          size: 22,
          show: bodyPartsIds.contains('lower legs'),
        ),
        _CircleMark(
          alignment: const Alignment(-0.4, 0.63),
          size: 22,
          show: bodyPartsIds.contains('lower legs'),
        ),
      ],
    );
  }
}

class _FemaleImage extends StatelessWidget {
  const _FemaleImage({super.key, required this.bodyPartsIds});
  final Set<String> bodyPartsIds;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          Assets.imageFemaleFitness,
          alignment: AlignmentDirectional.topStart,
        ),
        // _CircleMark(
        //   alignment: const Alignment(-0.1, -0.55),
        //   size: 16,
        //   show: bodyPartsIds.contains('neck'),
        //   // child: Icon(Icons.favorite_border, color: Co.primaryColor, size: 16),
        // ),
        // _CircleMark(
        //   alignment: const Alignment(0.35, -0.6),
        //   size: 18,
        //   show: bodyPartsIds.contains('shoulders'),
        // ),
        // _CircleMark(
        //   alignment: const Alignment(-0.5, -0.53),
        //   size: 18,
        //   show: bodyPartsIds.contains('shoulders'),
        // ),
        // _CircleMark(
        //   alignment: const Alignment(0.14, -0.43),
        //   size: 18,
        //   show: bodyPartsIds.contains('cardio'),
        // ),
        // _CircleMark(
        //   alignment: const Alignment(-0.2, -0.4),
        //   size: 24,
        //   show: bodyPartsIds.contains('chest'),
        // ),
        // _CircleMark(
        //   alignment: const Alignment(0.5, -0.45),
        //   size: 22,
        //   show: bodyPartsIds.contains('upper arms'),
        // ),
        // _CircleMark(
        //   alignment: const Alignment(-0.55, -0.36),
        //   size: 22,
        //   show: bodyPartsIds.contains('upper arms'),
        // ),
        // _CircleMark(
        //   alignment: const Alignment(-0.1, -0.05),
        //   size: 32,
        //   show: bodyPartsIds.contains('waist'),
        // ),
        // _CircleMark(
        //   alignment: const Alignment(-0.6, -0.1),
        //   size: 18,
        //   show: bodyPartsIds.contains('lower arms'),
        // ),
        // _CircleMark(
        //   alignment: const Alignment(0.5, -0.1),
        //   size: 18,
        //   show: bodyPartsIds.contains('lower arms'),
        // ),
        // _CircleMark(
        //   alignment: const Alignment(0.26, 0.24),
        //   size: 22,
        //   show: bodyPartsIds.contains('upper legs'),
        // ),
        // _CircleMark(
        //   alignment: const Alignment(-0.32, 0.22),
        //   size: 22,
        //   show: bodyPartsIds.contains('upper legs'),
        // ),
        // _CircleMark(
        //   alignment: const Alignment(0.45, 0.65),
        //   size: 22,
        //   show: bodyPartsIds.contains('lower legs'),
        // ),
        // _CircleMark(
        //   alignment: const Alignment(-0.4, 0.63),
        //   size: 22,
        //   show: bodyPartsIds.contains('lower legs'),
        // ),
      ],
    );
  }
}
