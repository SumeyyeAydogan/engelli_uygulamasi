import 'package:engelli_uygulama/config/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersonEvents extends StatefulWidget {
  const PersonEvents({Key key}) : super(key: key);

  @override
  _PersonEventsState createState() => _PersonEventsState();
}

class _PersonEventsState extends State<PersonEvents> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: lacivert,
        title: Text('Events'),
      ),
      body:                 Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: Get.width*0.03),
              margin: EdgeInsets.only(top: Get.height*0.02),
              child: Text(
                'Gittiğim',
                style:
                TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            SizedBox(height: Get.height*0.02,),
            Container(
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: Get.width*0.03),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    5,
                        (index) => Container(
                          margin: EdgeInsets.only(right: Get.width*0.05),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/a1.jpg',
                            width: Get.width*0.4,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          LimitedBox(
                            maxWidth: Get.width*0.4,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 5),
                                  child: Text(
                                    'Kitap Okuma Etkinliği',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold, fontSize: 12),
                                  ),
                                ),
                                Text(
                                  '27 ŞUB, 2020',
                                  style: TextStyle(
                                      color: Color(0xffffc13b),
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: Get.height*0.03,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Get.width*0.03),
              child: Text(
                'Gideceklerim',
                style:
                TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            SizedBox(height: Get.height*0.02,),
            Container(
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: Get.width*0.03),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    5,
                        (index) => Container(
                      margin: EdgeInsets.only(right: Get.width*0.05),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/a1.jpg',
                            width: Get.width*0.4,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          LimitedBox(
                            maxWidth: Get.width*0.4,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 5),
                                  child: Text(
                                    'Kitap Okuma Etkinliği',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold, fontSize: 12),
                                  ),
                                ),
                                Text(
                                  '27 ŞUB, 2020',
                                  style: TextStyle(
                                      color: Color(0xffffc13b),
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: Get.height*0.03,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Get.width*0.03),
              child: Text(
                'Oluşturduklarım',
                style:
                TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            SizedBox(height: Get.height*0.02,),
            Container(
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: Get.width*0.03),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    5,
                        (index) => Container(
                      margin: EdgeInsets.only(right: Get.width*0.05),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/a1.jpg',
                            width: Get.width*0.4,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          LimitedBox(
                            maxWidth: Get.width*0.4,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 5),
                                  child: Text(
                                    'Kitap Okuma Etkinliği',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold, fontSize: 12),
                                  ),
                                ),
                                Text(
                                  '27 ŞUB, 2020',
                                  style: TextStyle(
                                      color: Color(0xffffc13b),
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
