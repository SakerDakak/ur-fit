import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptiveProgressIndicator extends StatelessWidget {
  const AdaptiveProgressIndicator({super.key, this.size});
  final double? size;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: size ?? 40,
        width: size ?? 40,
        child: Center(
            child: !Platform.isIOS ? const CircularProgressIndicator() : const CupertinoActivityIndicator(radius: 18)));
  }
}
