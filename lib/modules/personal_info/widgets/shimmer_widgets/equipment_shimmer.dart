import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:urfit/modules/personal_info/widgets/equipment_item.dart';

class EquipmentShimmer extends StatelessWidget {
  final bool shortMode;
  const EquipmentShimmer({super.key, this.shortMode = false});

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      child: ListView.builder(
        shrinkWrap:true,
        itemCount: 4,
        itemBuilder: (_, __) => EquipmentItem(
          shortMode:shortMode,
          imageUrl:
              "https://avatars.mds.yandex.net/i?id=314a10df53c7d3092d5ae36d85872ee92d6f465f-9181363-images-thumbs&n=13",
          isSelected: false,
          onTap: () {},
          title: 'equipment title',
        ),
      ),
    );
  }
}
