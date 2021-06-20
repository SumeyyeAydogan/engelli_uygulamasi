import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Message extends StatefulWidget {
  const Message({Key key}) : super(key: key);

  @override
  _MessageState createState() => _MessageState();
}

class _MessageState extends State<Message> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfff5f0e1),
        centerTitle: true,
        title: Text(
          'John Mick',
          style: TextStyle(color: Color(0xff1e3d59)),
        ),
        iconTheme: IconThemeData(color: Color(0xff1e3d59)),
      ),
      body: Container(
        width: Get.width,
        height: Get.height,
        child: Stack(
          children: [
            ListView.builder(
              itemCount: 10,
              padding: EdgeInsets.symmetric(horizontal: Get.width*0.05,vertical: Get.height*0.03),
              itemBuilder: (context, index) => Container(
                margin: EdgeInsets.only(bottom: Get.height*0.05),
                child: index %2 == 0 ? Row(
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundImage: CachedNetworkImageProvider(
                        'https://images.unsplash.com/photo-1508921912186-1d1a45ebb3c1?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGhvdG98ZW58MHx8MHx8&ixlib=rb-1.2.1&w=1000&q=80',
                      ),
                    ),
                    SizedBox(
                      width: Get.width * 0.05,
                    ),
                    LimitedBox(
                      maxWidth: Get.width * 0.5,
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: Get.height*0.01,horizontal: Get.width*0.03),
                        decoration: BoxDecoration(
                          color: Color(0xfff5f0e1),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(16),
                            bottomLeft: Radius.circular(16),
                          ),
                        ),
                        child: Text('Selam dostum nasıl gidiyor ben çok iyiyim sen de iyisin bence'),
                      ),
                    )
                  ],
                ) : Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    LimitedBox(
                      maxWidth: Get.width * 0.5,
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: Get.height*0.01,horizontal: Get.width*0.03),
                        decoration: BoxDecoration(
                          color: Color(0xffff6e40),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(16),
                            bottomLeft: Radius.circular(16),
                          ),
                        ),
                        child: Text('Selam dostum nasıl gidiyor ben çok iyiyim sen de iyisin bence',style: TextStyle(color: Colors.white),),
                      ),
                    )
                  ],
                ),
              ),
            ),
            messageBottom(context),
          ],
        ),
      ),
    );
  }

  Positioned messageBottom(BuildContext context) {
    return Positioned(
      bottom: 0,
      child: Container(
        color: Colors.white,
        width: Get.width,
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: Get.width * 0.08),
              width: Get.width * 0.7,
              height: Get.height * 0.05,
              child: Theme(
                data: Theme.of(context).copyWith(accentColor: Colors.blue),
                child: TextFormField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                          vertical: Get.height * 0.01,
                          horizontal: Get.width * 0.04),
                      fillColor: Color(0xfff5f0e1),
                      filled: true,
                      hintText: 'Write a message',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none)),
                ),
              ),
            ),
            Expanded(
              child: IconButton(
                iconSize: 40,
                icon: CircleAvatar(
                    backgroundColor: Color(0xffff6e40),
                    child: Icon(
                      Icons.send,
                      color: Colors.white,
                    )),
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
