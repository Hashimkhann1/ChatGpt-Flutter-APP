import 'package:chatgpt/res/constant.dart';
import 'package:flutter/material.dart';

class DropDownWidget extends StatefulWidget {
  const DropDownWidget({super.key});

  @override
  State<DropDownWidget> createState() => _DropDownWidgetState();
}

class _DropDownWidgetState extends State<DropDownWidget> {
  String currentModel = 'Model 1';
  List<String> models = [
    "Model 1",
    "Model 2",
    "Model 3",
    "Model 4",
    "Model 5",
    "Model 6",
    "Model 7",
  ];
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      dropdownColor: scafoldBackgroundColor,
      iconEnabledColor: Colors.white,
      value: currentModel,
      items: models.map((model) {
        return DropdownMenuItem(
          value: model, // Use the unique value for each item
          child: Text(model,style: TextStyle(color: Colors.white),),
        );
      }).toList(),
      onChanged: (value) {
        setState(() {
          currentModel = value.toString();
        });
      },
    );
  }
}
