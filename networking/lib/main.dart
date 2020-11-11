import 'package:flutter/material.dart';

class jsonDAta extends StatefulWidget {
  @override
  _jsonDAtaState createState() => _jsonDAtaState();
}

class _jsonDAtaState extends State<jsonDAta> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text('Json'),
          bottom: TabBar(
            tabs: [Text('WhatsApp'), Text('FaceBook'), Text('Instagram')],
          ),
        ),
        body: TabBarView(
          children: [
            Center(child: Text('Whatsapp')),
            Center(child: Text('Whatsapp')),
            Center(child: Text('Whatsapp'))
          ],
        ),
      ),
    );
  }
}
