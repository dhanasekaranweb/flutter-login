import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: new Container(
        margin: new EdgeInsets.all(20.0),
        child: new Form(
          child: FormUI(),
        ),
      )
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

Widget FormUI(){
  return new Column(
    children: <Widget>[
      new TextFormField(
        decoration: new InputDecoration(hintText: 'Username'),
        keyboardType: TextInputType.text,
      ),
      new TextFormField(
        decoration: new InputDecoration(hintText: 'Email address'),
        keyboardType: TextInputType.emailAddress,
      ),
      new TextFormField(
        decoration: new InputDecoration(hintText: 'Phone number'),
        keyboardType: TextInputType.phone,
      ),
      new RaisedButton(
        onPressed: _sendToServer,
        child: new Text('Submit'),
      ),
    ],
  );
}

_sendToServer(){
  print("hai");
}