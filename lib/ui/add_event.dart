import 'package:engelli_uygulama/config/widgets/close_keyboard.dart';
import 'package:engelli_uygulama/config/widgets/text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class AddEvent extends StatefulWidget {
  const AddEvent({Key key}) : super(key: key);

  @override
  _AddEventState createState() => _AddEventState();
}

class _AddEventState extends State<AddEvent> {
  var _sizedBox = SizedBox(
    height: Get.height * 0.02,
  );

  @override
  Widget build(BuildContext context) {
    return CloseKeyboard(
      child: Padding(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        // text forma tıkladığımızda yukarı doğru çıkmasını sağlıyor
        child: Scaffold(
          backgroundColor: Color(0xfff5f0e1),
          resizeToAvoidBottomInset: false,

          // text forma tıkladığımızda yukarı doğru çıkmasını sağlıyor
          appBar: AppBar(
            iconTheme: IconThemeData(color: Color(0xff1e3d59)),
            elevation: 0,
            backgroundColor: Color(0xfff5f0e1),
            title: Text('Etkinlik Ekle',style: TextStyle(color: Color(0xff1e3d59)),),
            actions: [
              IconButton(icon: FaIcon(FontAwesomeIcons.check,color: Color(0xff1e3d59),), onPressed: (){})
            ],
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    height: 300,
                    width: double.infinity,
                    child: Align(
                      alignment: Alignment.center,
                      child: Image.asset(
                        'assets/camera.png',
                        width: Get.width * 0.07,
                      ),
                    ),
                  ),
                  _sizedBox,
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Başlık',
                        hintStyle: TextStyle(fontSize: 13,color: Color(0xff1e3d59)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6),
                            borderSide: BorderSide(
                                color: Colors.grey.shade400, width: 1)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6),
                            borderSide: BorderSide(
                                color: Colors.grey.shade400, width: 1))),
                  ),
                  _sizedBox,
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Konum',
                        hintStyle: TextStyle(fontSize: 13,color: Color(0xff1e3d59)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6),
                            borderSide: BorderSide(
                                color: Colors.grey.shade400, width: 1)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6),
                            borderSide: BorderSide(
                                color: Colors.grey.shade400, width: 1))),
                  ),
                  _sizedBox,
                  TextFormField(
                    maxLines: 5,
                    decoration: InputDecoration(
                        hintText: 'Açıklama',
                        hintStyle: TextStyle(fontSize: 13,color: Color(0xff1e3d59)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6),
                            borderSide: BorderSide(
                                color: Colors.grey.shade400, width: 1)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6),
                            borderSide: BorderSide(
                                color: Colors.grey.shade400, width: 1))),
                  ),
                  _sizedBox,
                  Container(
                    width: Get.width,
                    height: Get.height * 0.07,
                    decoration: BoxDecoration(

                        color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(7,9),
                          color: Colors.grey.shade400,
                          spreadRadius: 1,
                          blurRadius: 7
                        )
                      ]
                    ),
                    child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Tarih Seçiniz',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold,color: Color(0xff1e3d59)),
                        ),),
                  ),
                  _sizedBox,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
