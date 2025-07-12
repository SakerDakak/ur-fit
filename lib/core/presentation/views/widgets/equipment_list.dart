import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:urfit/modules/personal_info/data/models/selection_item_model.dart';

import '../../../../modules/personal_info/screens/widgets/equipment_item.dart';

class EquipmentList extends StatelessWidget {
  final List<SelectionItemModel> items;
  final Function(SelectionItemModel item) onTap;
  final Set<int> selectedItems;
  const EquipmentList({super.key, required this.items, required this.onTap, required this.selectedItems});

  @override
  Widget build(BuildContext context) {
    return Animate(
      effects: const [FadeEffect()],
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) => RadioBoxWithImage(
          title: items[index].name,
          imageUrl: items[index].image ?? "",
          onTap: () => onTap(items[index]),
          isSelected: selectedItems.contains(items[index].id),
        ),
      ),
    );
  }
}
