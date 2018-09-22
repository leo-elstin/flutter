import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.red,
      ),
      home: new MyHomePage(title: 'HOME'),  // Page title
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  String content = "Subscription";
  int currentIndex = 0;


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
//        title: new Text(widget.title),
        title: new Text(content), // change appBar title dynamically
      ),

      body: new Center(
        child: new Text(content),
      ),
      bottomNavigationBar: new BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: onChange,  // Selection Listener
          items: [ // Minimum three
            BottomNavigationBarItem(icon: new Icon(Icons.subscriptions), title: new Text("Subscriptions")),
            BottomNavigationBarItem(icon: new Icon(Icons.inbox), title: new Text("Inbox")),
            BottomNavigationBarItem(icon: new Icon(Icons.account_circle), title: new Text("Account")),

          ]),

    );
  }


  void onChange(int value) {  // item positon



    setState(() {
      currentIndex = value;
      if( value ==0) content ="Subscriptions";
      if( value ==1) content ="Inbox";
      if( value ==2) content ="Account";


    });


  }
}
