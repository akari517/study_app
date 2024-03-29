import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('hello'),
          centerTitle: true,
          backgroundColor: Colors.cyan,
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              /* setState((){

              });*/
            },
          ),
          actions: [Icon(Icons.add), Icon(Icons.done)],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("あああ"),
            ],
          ),
        ));
  }
}
