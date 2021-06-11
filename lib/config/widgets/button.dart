import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyButton extends StatelessWidget {

  final text;
  final fonksiyon;

  const MyButton({Key key, this.text,this.fonksiyon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.size.width*0.8,
      height: Get.size.height*0.07,
      child: ElevatedButton(
        onPressed: () {
          fonksiyon();
        },
        child: Text(text,style: TextStyle(fontSize: 24),),
      ),
    );
  }
}
