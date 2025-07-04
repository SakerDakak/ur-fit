import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:urfit/core/presentation/utils/pref_utils.dart';

class ChooseLocalWidget extends StatefulWidget {
  final List<dynamic> items;
  final ValueChanged<dynamic> onChanged;
  const ChooseLocalWidget({super.key, required this.items, required this.onChanged});

  @override
  State<ChooseLocalWidget> createState() => _ChooseLocalWidgetState();
}

class _ChooseLocalWidgetState extends State<ChooseLocalWidget> {
  dynamic _selectedValue;
  @override
  void initState() {
    if (widget.items.isNotEmpty) {
      if (widget.items is List<Map<String, dynamic>>) {
        final local = PrefUtils().getLang();

        final selectedLang = widget.items.firstWhere((value) {
          return value["value"] == local;
        });
        print("selectedLang = $selectedLang");
        _selectedValue = selectedLang;
      } else {
        _selectedValue = widget.items.first;
      }
    }
    super.initState();
  }

  @override
  void didUpdateWidget(covariant ChooseLocalWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("initState ${widget.items}");

    if (widget.items.isNotEmpty) {
      _selectedValue = widget.items.first;
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: widget.items.length,
      separatorBuilder: (BuildContext context, int index) => Divider(
        height: 17.px,
        color: Colors.white24,
        thickness: 1.px,
        indent: 24.px,
        endIndent: 24.px,
      ),
      itemBuilder: (BuildContext context, int index) {
        return RadioListTile(
          title: Text(
            widget.items[index] is! Map<String, dynamic> ? widget.items[index].name : widget.items[index]['name'],
            style: const TextStyle(color: Colors.white, fontSize: 18),
          ),
          value: widget.items[index],
          groupValue: _selectedValue,
          activeColor: Colors.blue,
          onChanged: (dynamic value) {
            setState(() {
              _selectedValue = value;
            });
            widget.onChanged(value);
          },
        );
      },
    );
  }
}
