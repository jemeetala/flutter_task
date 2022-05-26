import "package:flutter/material.dart";

void main() => runApp(MaterialApp(
      home: MyApp(),
    ));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var eText = "";
  var click = "";

  void _setText() {
    setState(() {
      click = eText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: TextField(              
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Text',
                hintText: 'Enter Text',
              ),
              onChanged: (value) => eText = value,
            ),
          ),
          Text(
           click,
              style: TextStyle(color: Colors.red,fontSize: 20.0),
           
          ),
          
          FlatButton(
            onPressed: _setText,
            child: Text(
              'click me',
              style: TextStyle(fontSize: 20.0),
            ),
            color: Colors.deepPurple,
            textColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
