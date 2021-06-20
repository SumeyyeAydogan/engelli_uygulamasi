import 'package:engelli_uygulama/config/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Comments extends StatefulWidget {
  const Comments({Key key}) : super(key: key);

  @override
  _CommentsState createState() => _CommentsState();
}

class _CommentsState extends State<Comments> {
  var liste = ['Sümeyye Aydoğan', 'Ahmet Mehmet'];
  var liste1 = [
    'Paragraf, herhangi bir yazının bir satır başından öteki satır başına kadar olan bölümüne denir. Daha geniş bir ifadeyle, paragraf "bir duyguyu, bir düşünceyi, bir isteği, bir durumu, bir öneriyi, olayın bir yönünü, yalnızca bir yönüyle anlatım tekniklerin­den ve düşünceyi geliştirme yollarından yararlanarak anlatan yazı türüdür.',
    ' Kelimeler cümleleri, cümleler paragrafları, paragraflar da yazıları oluşturur. Paragraf bir yazının küçültülmüş bir örneğidir. Bu yönüyle yapı bakımından bir yazıya benzer.'
  ];

  var liste2 = [
    '21.06.2054',
    '23.12.2034'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff1e3d59),
        title: Text('Comments'),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(12),
          itemCount: liste.length,
          itemBuilder: (context, index) => Container(
            margin: EdgeInsets.only(bottom: Get.height*0.04),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      liste[index],
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15,color: lacivert),
                    ),
                    SizedBox(height: Get.height*0.01,),
                    Text(
                      liste1[index],
                      style: TextStyle(fontSize: 13),
                    ),
                    SizedBox(height: Get.height*0.01,),
                    Align(alignment: Alignment.centerRight,child: Text(liste2[index],style: TextStyle(fontWeight: FontWeight.bold,color: sari),))
                  ],
                ),
          )),
    );
  }
}
