import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:urfit/core/presentation/utils/constants.dart';

class RadioListtileListWidget<T> extends StatefulWidget {
  final List<T> items;
  final Function(T value) onSelect;
  final T? initialValue;
  final String Function(T value) getName;
  const RadioListtileListWidget(
      {super.key, required this.items, required this.onSelect, this.initialValue, required this.getName});

  @override
  State<RadioListtileListWidget<T>> createState() => _RadioListtileListWidgetState<T>();
}

class _RadioListtileListWidgetState<T> extends State<RadioListtileListWidget<T>> {
  T? _selectedValue;
  @override
  void initState() {
    _selectedValue = widget.initialValue ?? widget.items.firstOrNull;
    super.initState();
  }

  @override
  void didUpdateWidget(covariant RadioListtileListWidget<T> oldWidget) {
    if (widget.items.isNotEmpty) {
      _selectedValue = widget.initialValue ?? widget.items.first;
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: widget.items.length,
      padding: AppConst.defaultHpadding,
      separatorBuilder: (BuildContext context, int index) => Divider(
        height: 17.px,
        color: Colors.white24,
        thickness: 1.px,
        indent: 24.px,
        endIndent: 24.px,
      ),
      itemBuilder: (BuildContext context, int index) {
        return RadioListTile(
          contentPadding: EdgeInsets.zero,
          splashRadius: AppConst.kBorderRadius,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppConst.kBorderRadius),
          ),
          title: Text(
            widget.getName(widget.items[index]),
            style: const TextStyle(color: Colors.white, fontSize: 18),
          ),
          value: widget.items[index],
          groupValue: _selectedValue,
          activeColor: Colors.blue,
          onChanged: (dynamic value) {
            setState(() {
              _selectedValue = value;
            });
            widget.onSelect(value);
          },
        );
      },
    );
  }
}
