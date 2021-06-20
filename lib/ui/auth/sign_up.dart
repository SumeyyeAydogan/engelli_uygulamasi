import 'package:engelli_uygulama/config/widgets/close_keyboard.dart';
import 'package:engelli_uygulama/config/widgets/my_padding.dart';
import 'package:engelli_uygulama/config/widgets/style.dart';
import 'package:engelli_uygulama/config/widgets/text_form_field.dart';
import 'package:engelli_uygulama/tabs.dart';
import 'package:engelli_uygulama/ui/auth/login_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
                      'SIGN UP',
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 27),
                    ),
                    emailPart(),
                    userNamePart(),
                    passwordPart(),
                    forgotPasswordPart(),
                    SizedBox(
                      height: Get.height * 0.03,
                    ),
                    signUpButtonPart(),
                    SizedBox(
                      height: Get.height * 0.07,
                    ),
                    Text('Or Sign In Using'),
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
                      height: Get.height * 0.135,
                    ),
                    Text('Or Sign In Using'),
                    SizedBox(
                      height: Get.height * 0.02,
                    ),
                    TextButton(
                      onPressed: () {
                        Get.off(()=>LoginPage(),opaque: false);
                      },
                      child: Text(
                        'SIGN IN',
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

   signUpButtonPart() {
    return GestureDetector(
      onTap: (){
        Get.off(()=>Tabs(currentTab1: 0,));
      },
      child: Container(
        height: Get.height * 0.05,
        width: Get.width,
        alignment: Alignment.center,
        decoration: const BoxDecoration(
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
          'SIGN UP',
          style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
        ),
      ),
    );
  }

  Container forgotPasswordPart() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
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
        SizedBox(height: Get.size.height * 0.04),
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
          height: Get.height * 0.04,
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

  Column emailPart(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: Get.height * 0.05,
        ),
        Text(
          'Email',
          style: loginStyle,
        ),
        MyTextForm(
          hintText: 'Type your email',
          onSaved: (kullanicininGirdigiDeger) {
            email = kullanicininGirdigiDeger;
          },
          icon: FontAwesomeIcons.envelope,
        ),
      ],
    );
  }

  void goOtherPage(){
    Get.to(() => Tabs(currentTab1: 0,));
  }
}
