import 'package:engelli_uygulama/config/widgets/button.dart';
import 'package:engelli_uygulama/config/widgets/close_keyboard.dart';
import 'package:engelli_uygulama/config/widgets/my_padding.dart';
import 'package:engelli_uygulama/config/widgets/text_form_field.dart';
import 'package:engelli_uygulama/tabs.dart';
import 'package:engelli_uygulama/ui/home_page.dart';
import 'package:engelli_uygulama/ui/auth/sign_up.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email, password;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return CloseKeyboard(
      child: MyPadding(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Form(
            key: _formKey,
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: size.height*0.3),
                    MyTextForm(
                      hintText: 'Email',
                      onSaved: (kullanicininGirdigiDeger) {
                        email = kullanicininGirdigiDeger;
                      },
                    ),
                    SizedBox(height: size.height*0.03),
                    MyTextForm(
                      hintText: 'Şifre',
                      onSaved: (kullanicininGirdigiDeger) {
                        password = kullanicininGirdigiDeger;
                      },
                    ),
                    SizedBox(height: size.height*0.03),
                    MyButton(text: 'Giriş Yap',fonksiyon: goOtherPage,),
                    SizedBox(height: size.height*0.2),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(text: 'Hesabınız Yok Mu?',style: TextStyle(fontSize: 20)),
                          TextSpan(
                            text: ' Üye Olun',
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                              Get.to(()=> SignUp());
                              },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void goOtherPage(){
    Get.to(() => Tabs(currentTab1: 1,));
  }
}
