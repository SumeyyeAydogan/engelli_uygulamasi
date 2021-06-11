import 'package:engelli_uygulama/config/widgets/button.dart';
import 'package:engelli_uygulama/config/widgets/text_form_field.dart';
import 'package:engelli_uygulama/ui/home_page.dart';
import 'package:engelli_uygulama/ui/login_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  String email, password,name;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: Get.size.height*0.3),
              MyTextForm(
                hintText: 'Email',
                onSaved: (kullanicininGirdigiDeger) {
                  email = kullanicininGirdigiDeger;
                },
              ),
              SizedBox(height: Get.size.height*0.03),
              MyTextForm(
                hintText: 'Ad Soyad',
                onSaved: (kullanicininGirdigiDeger) {
                  name = kullanicininGirdigiDeger;
                },
              ),
              SizedBox(height: Get.size.height*0.03),
              MyTextForm(
                hintText: 'Şifre',
                onSaved: (kullanicininGirdigiDeger) {
                  password = kullanicininGirdigiDeger;
                },
              ),
              SizedBox(height: Get.size.height*0.03),
              MyButton(text: 'Üye Ol',fonksiyon: goOtherPage,),
              SizedBox(height: Get.size.height*0.2),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(text: 'Hesabınız Var Mı?',style: TextStyle(fontSize: 20)),
                    TextSpan(
                      text: ' Giriş Yapın',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Get.to(()=> LoginPage());
                        },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void goOtherPage(){
    Get.to(() => HomePage());
  }
}
