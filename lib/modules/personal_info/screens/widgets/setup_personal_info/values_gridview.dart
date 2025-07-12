import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class ValuesGridView extends StatelessWidget {
  const ValuesGridView({
    super.key,
    required this.itemCount,
    required this.itemBuilder,
  });

  final int itemCount;
  final Widget? Function(BuildContext context, int index) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return Animate(
      effects: const [FadeEffect()],
      child: Wrap(
        alignment: WrapAlignment.center,
        runAlignment: WrapAlignment.center,
        crossAxisAlignment: WrapCrossAlignment.center,
        spacing: 16,
        runSpacing: 16,
        children: List.generate(itemCount, (index) => itemBuilder(context, index) ?? const SizedBox.shrink()),
      ),
    );
  }
}
