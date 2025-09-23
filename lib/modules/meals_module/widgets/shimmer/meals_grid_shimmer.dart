import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:urfit/core/presentation/style/colors.dart';

class MealsGridShimmer extends StatelessWidget {
  const MealsGridShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.px),
      child: GridView.builder(
        itemCount: 9, // عرض 9 عناصر skeleton
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 109 / 144.14,
          crossAxisSpacing: 8.px,
          mainAxisSpacing: 8.px,
        ),
        itemBuilder: (BuildContext context, int index) {
          return _MealGridItemShimmer();
        },
      ),
    );
  }
}

class _MealGridItemShimmer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Co.cardColor,
        borderRadius: BorderRadius.circular(8.px),
      ),
      child: Column(
        children: [
          // صورة الوجبة
          Expanded(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[800],
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(8.px),
                ),
              ),
            ),
          ),
          // معلومات الوجبة
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.all(4.px),
              decoration: BoxDecoration(
                color: Co.cardColor,
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(8.px),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // عنوان الوجبة
                  Container(
                    height: 12.px,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.grey[800],
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  SizedBox(height: 4.px),
                  Container(
                    height: 12.px,
                    width: 80.px,
                    decoration: BoxDecoration(
                      color: Colors.grey[800],
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  const Spacer(),
                  // السعرات الحرارية
                  Container(
                    height: 10.px,
                    width: 60.px,
                    decoration: BoxDecoration(
                      color: Colors.grey[800],
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
