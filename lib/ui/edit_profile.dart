import 'package:engelli_uygulama/config/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key key}) : super(key: key);

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  var liste = [
    'Kitap Okuma',
    'Futbol',
    'Dizi izleme',
    'Basketbol',
    'Müzik dinleme',
    'Satranç',
    'Bilgisayar oyunları',
    'Yazılım',
    'Bisiklet',
    'Tasarım'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff1e3d59),
        title: Text('Edit Profile'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(12.0),
        child: Column(
          children: [
            Align(
              alignment: Alignment.center,
              child: Stack(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/profil.jfif'),
                    radius: Get.height * 0.1,
                  ),
                  Positioned(
                    child: Image.asset(
                      'assets/photo-camera.png',
                      width: 40,
                    ),
                    bottom: 10,
                    right: 10,
                  )
                ],
              ),
            ),
            SizedBox(
              height: Get.height * 0.03,
            ),
            TextFormField(
              decoration: InputDecoration(
                  hintText: 'Ad Soyad',
                  hintStyle: TextStyle(fontSize: 13, color: Color(0xff1e3d59)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                      borderSide:
                          BorderSide(color: Colors.grey.shade400, width: 1)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                      borderSide:
                          BorderSide(color: Colors.grey.shade400, width: 1))),
            ),
            SizedBox(
              height: Get.height * 0.03,
            ),
            TextFormField(
              maxLines: 5,
              decoration: InputDecoration(
                  hintText: 'Hakkında',
                  hintStyle: TextStyle(fontSize: 13, color: Color(0xff1e3d59)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                      borderSide:
                          BorderSide(color: Colors.grey.shade400, width: 1)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                      borderSide:
                          BorderSide(color: Colors.grey.shade400, width: 1))),
            ),
            SizedBox(
              height: Get.height * 0.03,
            ),
            Align(
                alignment: Alignment.centerLeft, child: Text('İlgi alanları',style: TextStyle(fontSize: 16,color: Color(0xff1e3d59),fontWeight: FontWeight.bold),)),
            SizedBox(
              height: Get.height * 0.02,
            ),
            Container(
              width: Get.width,
              child: Wrap(
                spacing: 15,
                alignment: WrapAlignment.start,
                children: List.generate(
                  liste.length,
                  (index) => ActionChip(
                    backgroundColor:
                        index % 2 == 0 ? turuncu : gri,
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 6),
                    label: Text(liste[index],style: TextStyle(fontSize: 13,color: lacivert),),
                    onPressed: () {},
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
