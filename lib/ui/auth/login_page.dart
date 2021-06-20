import 'package:engelli_uygulama/config/widgets/close_keyboard.dart';
import 'package:engelli_uygulama/config/widgets/my_padding.dart';
import 'package:engelli_uygulama/config/widgets/style.dart';
import 'package:engelli_uygulama/config/widgets/text_form_field.dart';
import 'package:engelli_uygulama/tabs.dart';
import 'package:engelli_uygulama/ui/auth/sign_up.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
    return CloseKeyboard(
      child: MyPadding(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: Get.width * 0.1),
                child: Column(
                  children: [
                    SizedBox(
                      height: Get.height * 0.08,
                    ),
                    Text(
                      'Login',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 27),
                    ),
                    userNamePart(),
                    passwordPart(),
                    forgotPasswordPart(),
                    SizedBox(
                      height: Get.height * 0.03,
                    ),
                    loginButtonPart(),
                    SizedBox(
                      height: Get.height * 0.07,
                    ),
                    Text('Or Sign Up Using'),
                    SizedBox(
                      height: Get.height * 0.03,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/facebook.png',
                          height: Get.height * 0.04,
                        ),
                        SizedBox(
                          width: Get.width*0.04,
                        ),
                        Image.asset(
                          'assets/twitter.png',
                          height: Get.height * 0.04,
                        ),
                        SizedBox(
                          width: Get.width*0.04,
                        ),
                        Image.asset(
                          'assets/google-plus.png',
                          height: Get.height * 0.04,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: Get.height * 0.25,
                    ),
                    Text('Or Sign Up Using'),
                    SizedBox(
                      height: Get.height * 0.02,
                    ),
                    TextButton(
                      onPressed: () {
                        Get.off(()=> SignUp(),opaque: false);
                      },
                      child: Text(
                        'SIGN UP',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
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

  GestureDetector loginButtonPart() {
    return GestureDetector(
      onTap: (){
        Get.off(()=>Tabs(currentTab1: 0,));
      },
      child: Container(
        height: Get.height * 0.05,
        width: Get.width,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(18)),
          gradient: LinearGradient(
            colors: <Color>[
              Color(0xFF6dcbdf),
              Color(0xFFa982eb),
              Color(0xFFade46f4),
            ],
          ),
        ),
        child: Text(
          'LOGIN',
          style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
        ),
      ),
    );
  }

  Container forgotPasswordPart() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: Get.height*0.018),
      alignment: Alignment.centerRight,
      child: Text(
        'Forgot Password?',
        style: TextStyle(fontSize: 12),
      ),
    );
  }

  Column passwordPart() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: Get.size.height * 0.03),
        Text(
          'Password',
          style: loginStyle,
        ),
        MyTextForm(
          hintText: 'Type your password',
          onSaved: (kullanicininGirdigiDeger) {
            password = kullanicininGirdigiDeger;
          },
          icon: Icons.lock,
        ),
      ],
    );
  }

  userNamePart() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: Get.height * 0.05,
        ),
        Text(
          'Username',
          style: loginStyle,
        ),
        MyTextForm(
          hintText: 'Type your username',
          onSaved: (kullanicininGirdigiDeger) {
            email = kullanicininGirdigiDeger;
          },
          icon: FontAwesomeIcons.user,
        ),
      ],
    );
  }

  void goOtherPage() {
    Get.to(() => Tabs(
          currentTab1: 1,
        ));
  }
}
