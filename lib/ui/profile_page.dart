import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
      backgroundColor: Color(0xff1e3d59),
      appBar: AppBar(
        backgroundColor: Color(0xff1e3d59),
        elevation: 0,
        title: Text('Profil'),
        actions: [
          PopupMenuButton(
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  child: Text('Yorumlar'),
                  value: 'AA',
                ),
                PopupMenuItem(
                  child: Text('Gideceğim Etkinlikler'),
                  value: 'bb',
                ),
                PopupMenuItem(
                  child: Text('Oluşturduğum Etkinlikler'),
                  value: 'bb',
                ),
                PopupMenuItem(
                  child: Text('Profilimi Düzenle'),
                  value: 'bb',
                ),
              ];
            },
          ),
        ],
      ),
      body: SizedBox(
        height: Get.height,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(top: Get.height * 0.2),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  )),
            ),
            Column(
              children: [
                SizedBox(
                  height: Get.height * 0.07,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/profil.jfif'),
                  radius: Get.height * 0.1,
                ),
                _sizedBox,
                Text(
                  'Mehmet Aksoy',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700),
                ),
                _sizedBox,
                Wrap(
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: Get.width * 0.05),
                      child: Text(
                        'Paragraf, herhangi bir yazının bir satır başından öteki satır başına kadar olan bölümüne denir. Daha geniş bir ifadeyle, paragraf "bir duyguyu, bir düşünceyi, bir isteği, bir durumu, bir öneriyi, olayın bir yönünü, yalnızca bir yönüyle anlatım tekniklerin­den ve düşünceyi geliştirme yollarından yararlanarak anlatan yazı türüdür. Kelimeler cümleleri, cümleler paragrafları, paragraflar da yazıları oluşturur.',
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                  ],
                ),
                _sizedBox,
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: Get.width * 0.05),
                    child: Text(
                      'İlgi Alanları',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ),
                Text(''),
                Container(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                        5,
                        (index) => Container(
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/football.jpg',
                                height: 100,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text('Futbol')
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
/*
Container(
          width: Get.width,
          height: Get.height,
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    color: Colors.blue,
                    height: 200,
                    width: Get.width,
                    alignment: Alignment.center,
                  ),

                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                        5,
                        (index) => Container(
                          padding: EdgeInsets.all(12),
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/football.jpg',
                                height: 100,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text('Futbol')
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Positioned(
                top: 100,
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/profil.jfif'),
                      radius: Get.height * 0.1,
                    ),
                    _sizedBox,
                    Text(
                      'Mehmet Aksoy',
                      style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700),
                    ),
                   Text('42343fdsopfd sdfpğlsfd sdf sdfğlpdsdf'),
                   /*
                    Text(
                      'Paragraf, herhangi bir yazının bir satır başından öteki satır başına kadar olan bölümüne denir. Daha geniş bir ifadeyle, paragraf "bir duyguyu, bir düşünceyi, bir isteği, bir durumu, bir öneriyi, olayın bir yönünü, yalnızca bir yönüyle anlatım tekniklerin­den ve düşünceyi geliştirme yollarından yararlanarak anlatan yazı türüdür. Kelimeler cümleleri, cümleler paragrafları, paragraflar da yazıları oluşturur. Paragraf bir yazının küçültülmüş bir örneğidir. Bu yönüyle yapı bakımından bir yazıya benzer.',
                      style: TextStyle(fontSize: 12),
                    ),
                    */

                    _sizedBox,
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: Text(
                          'İlgi Alanları',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        )
 */
