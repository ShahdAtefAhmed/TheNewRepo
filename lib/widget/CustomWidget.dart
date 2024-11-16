import 'package:flutter/material.dart';
class Customwidget extends StatelessWidget {
  TextEditingController txt = TextEditingController();
  var label;
   Customwidget({super.key,required this.label,required this.txt});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value)
      {
        if(value==null||value.isEmpty)
          {
            print('filldat');
            return('filldata');
          }
        else
          {
            txt.text= value;
            return null;
          }
      },
      decoration: InputDecoration(
        label: Text(label)
      ),
    );
  }
}
