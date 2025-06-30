import 'package:flutter/material.dart';

Widget customDropDown(
  List<String> items,
  String value,
  void Function(String) onChange,
) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 18.0),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(8.0),
    ),
    child: DropdownButton<String>(
      value: value,
      isExpanded: true,
      underline: SizedBox(), // Không có gạch dưới
      onChanged: (String? val) {
        if (val != null) onChange(val);
      },
      items: items.map((String val) {
        return DropdownMenuItem<String>(value: val, child: Text(val));
      }).toList(),
    ),
  );
}
