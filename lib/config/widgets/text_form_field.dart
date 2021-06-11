import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyTextForm extends StatelessWidget {

  final hintText;
  final onSaved;

  const MyTextForm({Key key, this.hintText,this.onSaved}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.size.width*0.8,
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hintText,
          border: OutlineInputBorder(
          ),
        ),
        onSaved: onSaved,
      ),
    );
  }
}
