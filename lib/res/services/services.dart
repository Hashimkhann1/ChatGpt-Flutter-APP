

import 'package:chatgpt/res/constant.dart';
import 'package:chatgpt/res/widgets/drop_down_widget.dart';
import 'package:flutter/material.dart';

class Services {
  static Future<void> showModalSheet(BuildContext context) async {
    await showModalBottomSheet(
        backgroundColor: scafoldBackgroundColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(20))
        ),
        context: context,
        builder: (context) {
          return Padding(
            padding: const EdgeInsets.all(18.0),
            child: Row(
              children: [
                Expanded(child: Text('Chose Model:',style: TextStyle(color: Colors.white),)),
                Expanded(child: DropDownWidget())
              ],
            ),
          );
        });
  }
}