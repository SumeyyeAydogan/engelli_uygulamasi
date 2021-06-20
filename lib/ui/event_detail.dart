import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EventDetail extends StatefulWidget {
  final index;

  EventDetail({Key key, this.index}) : super(key: key);

  @override
  _EventDetailState createState() => _EventDetailState();
}

class _EventDetailState extends State<EventDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Hero(
                tag: widget.index,
                child: Image.asset(
                  'assets/a1.jpg',
                  width: Get.width,
                  height: 300,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                child: IconButton(
                  icon: Icon(Icons.arrow_back_ios,),
                  color: Colors.white,
                  onPressed: (){
                    Get.back();
                  },
                ),
                top: 40,
                left: 20,
              )
            ],
          ),
          Container(
            padding: EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Festival of the Arts 2020',
                  style:
                      TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: Get.height * 0.01, bottom: Get.height * 0.02),
                  child: Text(
                    '27 ŞUB, 2020',
                    style: TextStyle(
                        color: Color(0xffffc13b),
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  'ORTAHİSAR, TRABZON',
                  style:
                      TextStyle(color: Colors.grey.shade500, fontSize: 12),
                ),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                Text(
                  'Paragraf, herhangi bir yazının bir satır başından öteki satır başına kadar olan bölümüne denir. Daha geniş bir ifadeyle, paragraf "bir duyguyu, bir düşünceyi, bir isteği, bir durumu, bir öneriyi, olayın bir yönünü, yalnızca bir yönüyle anlatım tekniklerin­den ve düşünceyi geliştirme yollarından yararlanarak anlatan yazı türüdür. Kelimeler cümleleri, cümleler paragrafları, paragraflar da yazıları oluşturur. Paragraf bir yazının küçültülmüş bir örneğidir. Bu yönüyle yapı bakımından bir yazıya benzer.',
                ),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                Text(
                  'Attending',
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Container(
                  width: Get.width,
                  height: Get.height * 0.1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('7/7 attending'),
                      Row(
                        children: [
                          ListView.builder(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemCount: 3,
                            itemBuilder: (context, index) => CircleAvatar(
                              radius: 20,
                              backgroundImage: CachedNetworkImageProvider(
                                'https://images.unsplash.com/photo-1508921912186-1d1a45ebb3c1?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGhvdG98ZW58MHx8MHx8&ixlib=rb-1.2.1&w=1000&q=80',
                              ),
                            ),
                          ),
                          CircleAvatar(
                            radius: 20,
                            backgroundImage: CachedNetworkImageProvider(
                              'https://thumbs.dreamstime.com/b/addition-plus-sign-icon-illustration-graphic-design-83211720.jpg',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
