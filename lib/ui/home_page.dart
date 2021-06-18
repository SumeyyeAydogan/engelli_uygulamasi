import 'package:engelli_uygulama/ui/add_event.dart';
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

  var liste1 = ['assets/a1.jpg','assets/a2.jpg','assets/a3.jpg'];

  var liste2 = ['Tarihi Müze Gezisi', 'Hayvanlar İçin Konser','EFK 4.Konferansı'];

  var yazi =
      'Paragraf, herhangi bir yazının bir satır başından öteki satır başına kadar olan bölümüne denir. Daha geniş bir ifadeyle, paragraf "bir duyguyu, bir düşünceyi, bir isteği, bir durumu, bir öneriyi, olayın bir yönünü, yalnızca bir yönüyle anlatım tekniklerin­den ve düşünceyi geliştirme yollarından yararlanarak anlatan yazı türüdür. Kelimeler cümleleri, cümleler paragrafları, paragraflar da yazıları oluşturur. Paragraf bir yazının küçültülmüş bir örneğidir. Bu yönüyle yapı bakımından bir yazıya benzer.';

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Etkinlikler'),
        actions: [
          IconButton(icon: FaIcon(FontAwesomeIcons.plusSquare,), onPressed: (){
            Get.to(() => AddEvent());
          }),
          IconButton(icon: FaIcon(FontAwesomeIcons.search,), onPressed: (){
            Get.to(() => AddEvent());
          }),
        ],
      ),
      body: ListView.builder(
        itemCount: liste1.length,
        itemBuilder: (context, index) => Container(
          margin: EdgeInsets.only(bottom: 10),
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(borderRadius: BorderRadius.circular(15),child: Image.asset(liste1[index])),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  liste2[index],
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                ),
              ),
              Text(yazi.length > 130
                  ? yazi.substring(0, 130) + ' ...'
                  : yazi,textAlign: TextAlign.start,),
              SizedBox(
                height: Get.height * 0.02,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  '07.08.2021',
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
