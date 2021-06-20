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
          resizeToAvoidBottomInset: false,
          // text forma tıkladığımızda yukarı doğru çıkmasını sağlıyor
          appBar: AppBar(

            title: Text('Etkinlik Ekle'),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xffe8f5e9),
                      ),
                      height: 300,
                      width: double.infinity,
                      child: IconButton(
                        icon: FaIcon(FontAwesomeIcons.plus),
                        onPressed: () {},
                      )),
                  _sizedBox,
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Başlık',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6)),
                    ),
                  ),
                  _sizedBox,
                  TextFormField(
                    maxLines: 5,
                    decoration: InputDecoration(
                      hintText: 'Açıklama',
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(6)),
                    ),
                  ),
                  _sizedBox,
                  Container(
                    width: Get.width,
                    height: Get.height * 0.07,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Color(0xffffa000)),
                      onPressed: () {},
                      child: Text(
                        'Tarih Seçiniz',
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                  ),
                  _sizedBox,
                  Container(
                    width: Get.width,
                    height: Get.height * 0.07,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Color(0xffc67100)),
                      onPressed: () {},
                      child: Text(
                        'Kaydet',
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
