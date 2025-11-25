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
    final isFemale = context.read<AppCubit>().state.isFemale;
    return AspectRatio(
      aspectRatio: 0.54,
      child: BlocBuilder<SetupPersonalInfoCubit, SetupPersonalInfoState>(
        builder: (context, state) => Directionality(
          textDirection: TextDirection.ltr,
          child: _MaleImage(
              bodyPartsIds: state.userInfo.bodyPartsIds, isFemale: isFemale),
        ),
      ),
    );
  }
}

class _CircleMark extends StatelessWidget {
  const _CircleMark({
    required this.alignment,
    required this.show,
    required this.size,
    required this.isFemale,
  });
  final AlignmentGeometry alignment;
  final bool show;
  final double size;
  final bool isFemale;

  @override
  Widget build(BuildContext context) {
    final color = isFemale ? Co.primaryColorFemale : Co.primaryColor;

    return Align(
      alignment: alignment,
      child: AnimatedScale(
        scale: show ? 1.0 : 0.0,
        duration: Durations.long1,
        curve: Curves.easeInOutBack,
        child: DecoratedBox(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color.withAlpha(100),
            border: Border.all(color: color),
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
            isFemale: isFemale,
          ),
          _CircleMark(
            alignment: const Alignment(0.43, -0.67),
            size: 18,
            show: bodyPartsIds.contains('shoulders'),
            isFemale: isFemale,
          ),
          _CircleMark(
            alignment: const Alignment(-0.43, -0.67),
            size: 18,
            show: bodyPartsIds.contains('shoulders'),
            isFemale: isFemale,
          ),
          _CircleMark(
            alignment: const Alignment(0.18, -0.51),
            size: 18,
            show: bodyPartsIds.contains('cardio'),
            isFemale: isFemale,
          ),
          _CircleMark(
            alignment: const Alignment(-0.2, -0.55),
            size: 24,
            show: bodyPartsIds.contains('chest'),
            isFemale: isFemale,
          ),
          _CircleMark(
            alignment: const Alignment(0.54, -0.45),
            size: 22,
            show: bodyPartsIds.contains('upper arms'),
            isFemale: isFemale,
          ),
          _CircleMark(
            alignment: const Alignment(-0.54, -0.45),
            size: 22,
            show: bodyPartsIds.contains('upper arms'),
            isFemale: isFemale,
          ),
          _CircleMark(
            alignment: const Alignment(-0.1, -0.05),
            size: 26,
            show: bodyPartsIds.contains('waist'),
            isFemale: isFemale,
          ),
          _CircleMark(
            alignment: const Alignment(-0.57, -0.13),
            size: 18,
            show: bodyPartsIds.contains('lower arms'),
            isFemale: isFemale,
          ),
          _CircleMark(
            alignment: const Alignment(0.59, -0.13),
            size: 18,
            show: bodyPartsIds.contains('lower arms'),
            isFemale: isFemale,
          ),
          _CircleMark(
            alignment: const Alignment(0.26, 0.24),
            size: 26,
            show: bodyPartsIds.contains('upper legs'),
            isFemale: isFemale,
          ),
          _CircleMark(
            alignment: const Alignment(-0.26, 0.24),
            size: 26,
            show: bodyPartsIds.contains('upper legs'),
            isFemale: isFemale,
          ),
          _CircleMark(
            alignment: const Alignment(0.3, 0.65),
            size: 22,
            show: bodyPartsIds.contains('lower legs'),
            isFemale: isFemale,
          ),
          _CircleMark(
            alignment: const Alignment(-0.3, 0.65),
            size: 22,
            show: bodyPartsIds.contains('lower legs'),
            isFemale: isFemale,
          ),
        ],
      ),
    );
  }
}
