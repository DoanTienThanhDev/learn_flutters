
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Homework'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final ButtonStyle btnStyle= ElevatedButton.styleFrom() ;

  @override
  Widget build(BuildContext context) {
    final ButtonStyle styleButton = ButtonStyle( backgroundColor: MaterialStateProperty.all<Color>(Colors.blue));
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        title: Text(widget.title),
      ),
      body: Container(margin: const EdgeInsets.only(top: 30), alignment: AlignmentDirectional.center,child: Column(crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[Column(
        children:  <Widget>[
        const Text('ADVARAEG SALARY', style: TextStyle(color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold)),
        const  Padding(padding:  EdgeInsets.symmetric(vertical: 12)),
        SizedBox(width: 350, height: 44, child: ElevatedButton(onPressed: null, child: const Text('AVARAGE SALARY', style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500),), style: styleButton,)),
        const  Padding(padding: EdgeInsets.symmetric(vertical: 10)),
        SizedBox(width: 350, height: 200, child: Card(child: Row(children:  <Widget>[
        SizedBox(width: 150, height: 200, child: Column(children: const <Widget>[
          Text('NGÔN NGỮ MỚI NHẤT', style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600)),
          Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
          Text('Flutter 1.0', style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600)),
        ]
        ,)),
        SizedBox(width: 150, height: 200, child: Column(children: const <Widget>[Text('HIGHEST SALARY', style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600),
        )]
        ,)),
        ]))),
        ],
      )], 
      ),)
    );
  }
}
