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
    return SafeArea(
      bottom: true,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Profil'),
          actions: [
            IconButton(
              icon: FaIcon(Icons.more_vert),
              onPressed: () {},
            ),
          ],
        ),
        body: Align(
          alignment: Alignment.center,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(14.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
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
                  _sizedBox,
                  Text(
                    'Paragraf, herhangi bir yazının bir satır başından öteki satır başına kadar olan bölümüne denir. Daha geniş bir ifadeyle, paragraf "bir duyguyu, bir düşünceyi, bir isteği, bir durumu, bir öneriyi, olayın bir yönünü, yalnızca bir yönüyle anlatım tekniklerin­den ve düşünceyi geliştirme yollarından yararlanarak anlatan yazı türüdür. Kelimeler cümleleri, cümleler paragrafları, paragraflar da yazıları oluşturur. Paragraf bir yazının küçültülmüş bir örneğidir. Bu yönüyle yapı bakımından bir yazıya benzer.',
                    style: TextStyle(fontSize: 12),
                  ),
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
            ),
          ),
        ),
      ),
    );
  }
}
