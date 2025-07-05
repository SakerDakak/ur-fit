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
      child: GridView.builder(
        shrinkWrap: true,
        itemCount: itemCount,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          childAspectRatio: 2 / 0.9,
          mainAxisSpacing: 12.0,
          crossAxisSpacing: 8.0,
        ),
        itemBuilder: itemBuilder,
      ),
    );
  }
}
