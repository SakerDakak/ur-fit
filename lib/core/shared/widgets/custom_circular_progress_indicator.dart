import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class CustomCircularProgressIndicator extends StatelessWidget {
  const CustomCircularProgressIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return
      Center(child: Lottie.asset(

      'assets/icons/wLoadingPage.json', height: 60, width: 60, ));
  }
}
