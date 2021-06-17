import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  var _sizedBox = SizedBox(
    height: Get.height * 0.02,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Profil'),
        ),
        body: Padding(
          padding: EdgeInsets.all(12.0),
          child: Align(
            alignment: Alignment.center,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/logo.jpg'),
                  radius: 100,
                ),
                _sizedBox,
                Text(
                  'Sümeyye Aydoğan',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700),
                ),
                _sizedBox,
                Text(
                    'Paragraf, herhangi bir yazının bir satır başından öteki satır başına kadar olan bölümüne denir. Daha geniş bir ifadeyle, paragraf "bir duyguyu, bir düşünceyi, bir isteği, bir durumu, bir öneriyi, olayın bir yönünü, yalnızca bir yönüyle anlatım tekniklerin­den ve düşünceyi geliştirme yollarından yararlanarak anlatan yazı türüdür. Kelimeler cümleleri, cümleler paragrafları, paragraflar da yazıları oluşturur. Paragraf bir yazının küçültülmüş bir örneğidir. Bu yönüyle yapı bakımından bir yazıya benzer.'),
                _sizedBox,
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Text('İlgi Alanları'),
                  ),
                ),
                Row(
                  children: List.generate(
                    5,
                    (index) => Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('342'),
                    ),
                  ),
                ),
                Container(
                  width: Get.width,
                  height: Get.height * 0.07,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Color(0xff2e7d32)),
                    onPressed: () {},
                    child: Text(
                      'Gideceğim Etkinlikler',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                _sizedBox,
                Container(
                  width: Get.width,
                  height: Get.height * 0.07,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Color(0xff005005)),
                    onPressed: () {},
                    child: Text(
                      'Oluşturduğum Etkinlikler',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
