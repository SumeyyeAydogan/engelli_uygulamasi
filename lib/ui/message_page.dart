import 'package:cached_network_image/cached_network_image.dart';
import 'package:engelli_uygulama/ui/message.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({Key key}) : super(key: key);

  @override
  _MessagePageState createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xfff5f0e1),
        title: Text(
          'Messages',
          style: TextStyle(color: Color(0xff1e3d59)),
        ),
        actions: [
          IconButton(
              icon: Icon(Icons.search, color: Color(0xff1e3d59)),
              onPressed: () {}),
        ],
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) => Column(
          children: [
            Container(
              width: Get.width,
              margin: EdgeInsets.symmetric(vertical: Get.height * 0.01,horizontal: Get.width*0.02),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 26,
                    backgroundImage: CachedNetworkImageProvider(
                      'https://images.unsplash.com/photo-1508921912186-1d1a45ebb3c1?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGhvdG98ZW58MHx8MHx8&ixlib=rb-1.2.1&w=1000&q=80',
                    ),
                  ),
                  Expanded(
                    child: ListTile(
                      onTap: (){
                        Get.to(()=> Message());
                      },
                      title: Text('Sümeyye',style: TextStyle(fontWeight: FontWeight.bold),),
                      subtitle: Container(margin: EdgeInsets.only(top: 7),child: Text('Selammm',style: TextStyle(fontSize: 13,color: Colors.black54),)),
                      trailing: Text('3dk önce',style: TextStyle(fontSize: 12,color: Colors.grey.shade400),),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
