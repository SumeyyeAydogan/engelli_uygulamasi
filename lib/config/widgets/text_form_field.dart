import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyTextForm extends StatelessWidget {

  final hintText;
  final onSaved;
  final icon;

  const MyTextForm({Key key, this.hintText,this.onSaved,this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: Get.size.width*0.8,
          child: TextFormField(
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: TextStyle(color: Colors.grey.shade600,fontSize: 13),
              prefixIcon: Icon(icon,size: 16)
            ),
            onSaved: onSaved,
          ),
        ),
      ],
    );
  }
}
