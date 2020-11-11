import 'package:flutter/material.dart';

class Form extends StatefulWidget {
  @override
  _FormState createState() => _FormState();
}

class _FormState extends State<Form> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: col[currentIndex]),
      body: Center(
          child: Column(
        children: [
          TextFormField(
              onChanged: (value) {
                setState(() {
                  if (currentIndex == 4) {
                    currentIndex--;
                  }
                });
              },
              // controller: _emailcontroller,
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              )),
          SizedBox(height: 20),
          TextFormField(
              onChanged: (value) {
                setState(() {
                  if (currentIndex == 4) {
                    currentIndex = 0;
                  } else {
                    currentIndex++;
                  }
                });
              },
              // controller: _passwordcontroller,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              )),
          RaisedButton(
            color: col[currentIndex],
            onPressed: () {},
            child: Text('Submit'),
          )
        ],
      )),
    );
  }

  List<Color> col = [
    Colors.red,
    Colors.green,
    Colors.orange,
    Colors.pink,
    Colors.purple
  ];
}
