import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gif/gif.dart';
import 'package:urfit/modules/workout_module/controller/workout_cubit.dart';

class PlayButton extends StatefulWidget {
  final int exerciseId;
  final GifController controller;
  final VoidCallback start;
  const PlayButton(
      {super.key,
      required this.controller,
      required this.start,
      required this.exerciseId});

  @override
  State<PlayButton> createState() => _PlayButtonState();
}

class _PlayButtonState extends State<PlayButton>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );
    animation = Tween<double>(begin: 0.0, end: 1.0).animate(controller);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WorkoutCubit, WorkoutState>(
      builder: (context, state) {
        // print("isPlaying: ${state.isPlaying}");

        if (!state.isPlaying) {
          controller.reverse();
        }
        return IconButton.filled(
            style: IconButton.styleFrom(fixedSize: const Size(50, 45)),
            iconSize: 35,
            padding: EdgeInsets.zero,
            onPressed: state.remainingSets[widget.exerciseId] == 0
                ? null
                : () async {
                    if (controller.value == 1) {
                      controller.reverse();
                      widget.controller.stop();
                    } else {
                      controller.forward();
                      await context
                          .read<WorkoutCubit>()
                          .playTraining(widget.controller);
                      widget.start();

                      // بدء التمرين في التخزين المحلي
                      await context.read<WorkoutCubit>().startTodayWorkout();
                    }
                  },
            icon: AnimatedIcon(
              icon: AnimatedIcons.play_pause,
              progress: animation,
            ));
      },
    );
  }
}
