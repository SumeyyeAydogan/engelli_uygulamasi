import 'package:engelli_uygulama/ui/add_event.dart';
import 'package:engelli_uygulama/ui/event_detail.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var liste = <String>['a', 'b', 'c', 'd'];

  var liste1 = ['assets/a1.jpg', 'assets/a2.jpg', 'assets/a3.jpg'];

  var liste2 = [
    'Tarihi Müze Gezisi',
    'Hayvanlar İçin Konser',
    'EFK 4.Konferansı'
  ];

  var yazi =
      'Paragraf, herhangi bir yazının bir satır başından öteki satır başına kadar olan bölümüne denir. Daha geniş bir ifadeyle, paragraf "bir duyguyu, bir düşünceyi, bir isteği, bir durumu, bir öneriyi, olayın bir yönünü, yalnızca bir yönüyle anlatım tekniklerin­den ve düşünceyi geliştirme yollarından yararlanarak anlatan yazı türüdür. Kelimeler cümleleri, cümleler paragrafları, paragraflar da yazıları oluşturur. Paragraf bir yazının küçültülmüş bir örneğidir. Bu yönüyle yapı bakımından bir yazıya benzer.';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        actions: [
          IconButton(icon: FaIcon(FontAwesomeIcons.plusSquare), onPressed: (){
            Get.to(()=>AddEvent());
          },)
        ],
        title: Text(
          'Etkinlikler',
          style: TextStyle(
              color: Colors.black, fontSize: 26, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: Get.height*0.087,
            child: ListView.builder(shrinkWrap: true,itemCount: 5, scrollDirection: Axis.horizontal,itemBuilder: (context,index)=>Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Material(
                    elevation: 6.0,
                    color: Colors.white,
                    shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    child: CircleAvatar(
                      backgroundColor: Colors.grey.shade100,
                      foregroundColor: Colors.black,
                      child: IconButton(
                        icon: FaIcon(
                          FontAwesomeIcons.handPeace,
                          color: Color(0xff1e3d59),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: Get.width * 0.03,),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Social'),
                        SizedBox(
                          height: Get.height * 0.008,
                        ),
                        Text(
                          '22 events',
                          style:
                          TextStyle(fontSize: 12, color: Color(0xff1e3d59),),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),),
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: liste1.length,
              itemBuilder: (context, index) => Container(
                margin: EdgeInsets.only(bottom: 10),
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Hero(
                        tag: index,
                        child: Image.asset(
                          liste1[index],
                          width: 360,
                          height: 360,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: Get.height * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '27 ŞUB, 2020',
                              style: TextStyle(
                                  color: Color(0xffffc13b),
                                  fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 10),
                              child: Text(
                                liste2[index],
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                            ),
                            Text(
                              'ORTAHİSAR, TRABZON',
                              style: TextStyle(
                                  color: Colors.grey.shade500, fontSize: 12),
                            ),
                          ],
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.to(()=>EventDetail(index: index,));
                          },
                          child: Container(
                            margin: EdgeInsets.only(bottom: Get.height*0.03),
                            height: Get.height * 0.05,
                            width: Get.width * 0.3,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(30 )),
                              color: Color(0xffffc13b),
                            ),
                            child: Text(
                              'Interested',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
