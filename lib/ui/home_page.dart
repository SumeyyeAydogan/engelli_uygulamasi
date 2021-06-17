import 'package:engelli_uygulama/ui/add_event.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var liste = <String>['a', 'b', 'c', 'd'];

  var yazi =
      'Paragraf, herhangi bir yazının bir satır başından öteki satır başına kadar olan bölümüne denir. Daha geniş bir ifadeyle, paragraf "bir duyguyu, bir düşünceyi, bir isteği, bir durumu, bir öneriyi, olayın bir yönünü, yalnızca bir yönüyle anlatım tekniklerin­den ve düşünceyi geliştirme yollarından yararlanarak anlatan yazı türüdür. Kelimeler cümleleri, cümleler paragrafları, paragraflar da yazıları oluşturur. Paragraf bir yazının küçültülmüş bir örneğidir. Bu yönüyle yapı bakımından bir yazıya benzer.';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Text('Ana Sayfa'),
        centerTitle: true,
        actions: [
          IconButton(
              icon: Icon(Icons.add_circle),
              onPressed: () {
                Get.to(() => AddEvent());
              }),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: liste.length,
          itemBuilder: (context, index) => Card(
            elevation: 10,
            child: Container(
              margin: EdgeInsets.only(bottom: 10),
              padding: EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('assets/logo.jpg'),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Kitap Okuma',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(yazi.length > 100
                      ? yazi.substring(0, 100) + ' ...'
                      : yazi),
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      '07.08.2021',
                      style: TextStyle(fontWeight: FontWeight.bold),
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
