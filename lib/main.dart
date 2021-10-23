import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo url_launcher',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: (){
                  launch('tel:+49 88888888888');
                },child: Text("Make A Call"),
              ),
              ElevatedButton(
                onPressed: (){
                  launch('sms:+91888888888?body=Hi Welcome to Proto Coders Point');
                },child: Text("Send A SMS"),
              ),
              ElevatedButton(
                onPressed: (){
                  //launch('mailto:fluttercrypto@gmx.de?subject=This is Subject Title&body=This is Body of Email');
                  launch('mailto:edvmf@gmx.de?subject=This is Subject Title&body=This is Body of Email');
                },child: Text("Send A Email"),
              ),
              ElevatedButton(
                onPressed: (){
                  launch('https://protocoderspoint.com/');
                },child: Text("Open a URL"),
              ),
            ],
          ),
        )
    );
  }
}
