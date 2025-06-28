import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:urfit/core/const.dart';

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
    if(widget.items.isNotEmpty) {
      if(widget.items is List<Map<String,dynamic>>) {
        final local = rootScaffoldKey.currentContext!.locale.languageCode;

        final selectedLang = widget.items.firstWhere((value) {
          return value["value"] == local;
        });
        print("selectedLang = $selectedLang");
        _selectedValue = selectedLang;
      }else{
        _selectedValue = widget.items.first;
      }
    }
    super.initState();
  }



  @override
  void didUpdateWidget(covariant ChooseLocalWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("initState ${widget.items}");

    if(widget.items.isNotEmpty) {
      _selectedValue = widget.items.first;
    }
  }

  @override
  Widget build(BuildContext context) {

    return Expanded(
      child: ListView.separated(
        shrinkWrap: true,
        itemCount: widget.items.length, separatorBuilder: (BuildContext context, int index) => SizedBox(height: 20.px,),
        itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding:  EdgeInsets.symmetric(horizontal :16.px),
          child: Column(mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 16.px),
                child: Row(
                  children: [
                    Radio<dynamic>(
                      value: widget.items[index],
                      groupValue: _selectedValue,
                      activeColor: Colors.blue,
                      onChanged: (dynamic value) {
                        setState(() {
                          _selectedValue = value;
                        });
                        widget.onChanged(value);
                      },
                    ),
                    SizedBox(width: 8),
                    Text(
                     widget.items[index] is! Map<String,dynamic> ? widget.items[index].name : widget.items[index]['value'],
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    Spacer(),
                    // SvgPicture.asset(widget.items[index]['icon']), // Replace with flag images
                  ],
                ),
              ),
              Divider(color: Colors.grey,thickness: 1,),
            ],
          ),
        );
      },),
    );
  }
}


