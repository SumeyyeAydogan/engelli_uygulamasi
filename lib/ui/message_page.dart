import 'package:flutter/material.dart';
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
      appBar: AppBar(
        title: Text('Konuşmalar'),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) => Column(
          children: [
            Container(
              margin: EdgeInsets.all(2),
              child: ListTile(
                leading: CircleAvatar(backgroundImage: AssetImage('assets/logo.jpg'),),
                title: Text('Sümeyye'),
                subtitle: Text('Selammm'),
                trailing: Text('3dk önce'),
              ),
            ),
            Container(height: Get.height*0.0007,color: Colors.grey.shade400,),
          ],
        ),
      ),
    );
  }
}
