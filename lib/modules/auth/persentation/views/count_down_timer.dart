import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/presentation/style/colors.dart';
import '../../../../core/presentation/style/fonts.dart';
// import '../bloc/login_bloc.dart';

class TimerPage extends StatefulWidget {
  const TimerPage({super.key, required this.otpTimer});

  final int otpTimer;

  @override
  State<TimerPage> createState() => _TimerPageState();
}

class _TimerPageState extends State<TimerPage> with TickerProviderStateMixin {
  AnimationController? _controller;

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  @override
  void initState() {
    _controller = AnimationController(vsync: this, duration: Duration(seconds: widget.otpTimer));

    _controller!.forward();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Countdown(
      animation: StepTween(
        begin: widget.otpTimer, // THIS IS A USER ENTERED NUMBER
        end: 0,
      ).animate(_controller!),
    );
  }
}

class Countdown extends AnimatedWidget {
  final Animation<int>? animation;

  Countdown({
    Key? key,
    this.animation,
  }) : super(key: key, listenable: animation!);

  @override
  build(BuildContext context) {
    Duration clockTimer = Duration(seconds: animation!.value);

    String timerText =
        '${clockTimer.inMinutes.remainder(60).toString()}:${clockTimer.inSeconds.remainder(60).toString().padLeft(2, '0')}';

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              timerText != "0:00" ? 'تنتهي صلاحية الرمز خلال' : 'إعادة ارسال رقم التحقق عن طريق',
              style: TStyle.regular_14.copyWith(color: Co.greyColor),
            ),
            SizedBox(
              width: 6,
            ),
            if (timerText != "0:00")
              Text(
                timerText,
                style: TStyle.regular_14.copyWith(color: Co.greyColor),
              ),
          ],
        ),
        if (timerText == "0:00")
          SizedBox(
            height: 10,
          ),
        if (timerText == "0:00")
          Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  child: OutlinedButton.icon(
                    onPressed: () {
                      // context.read<LoginBloc>().registerResendCode('sms');
                    },
                    label: Text(
                      'رسالة النصية',
                      style: TStyle.regular_14.copyWith(color: Theme.of(context).colorScheme.primary),
                    ),
                    icon: SvgPicture.asset(
                      '',
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ),
                SizedBox(
                  width: 6,
                ),
                Expanded(
                  child: OutlinedButton.icon(
                    onPressed: () {
                      // context.read<LoginBloc>().registerResendCode('whatsapp');
                    },
                    label: Text(
                      'واتساب',
                      style: TStyle.regular_14.copyWith(color: Theme.of(context).colorScheme.primary),
                    ),
                    icon: SvgPicture.asset(
                      '',
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ),
              ],
            ),
          )
      ],
    );
  }
}
