import 'package:flutter/material.dart';

void main() {
  runApp(const Ex4());
}

class Ex4 extends StatelessWidget {
  const Ex4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: const MyHomePage(title: 'Enouvo Training Flutter'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(widget.title),
          leading: IconButton(icon: const Icon(Icons.menu), onPressed: () {})),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Padding(padding: EdgeInsets.only(top: 10)),
              Card(
                shape: const BeveledRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                child: Row(children: const <Widget>[
                  Checkbox(
                      value: true,
                      onChanged: null,
                      activeColor: Colors.orange,
                      checkColor: Colors.white),
                  Padding(padding: EdgeInsets.only(left: 8)),
                  Text(
                    'Make a coffee',
                    style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  )
                ]),
              ),
              const Padding(padding: EdgeInsets.only(top: 20)),
                 Card(
                shape: const BeveledRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                child: Row(children: const <Widget>[
                  Checkbox(
                      value: true,
                      onChanged: null,
                      activeColor: Colors.orange,
                      checkColor: Colors.white),
                  Padding(padding: EdgeInsets.only(left: 8)),
                  Text(
                    'Make a coffee',
                    style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  )
                ]),
              ),
            ]),
      ),
    );
  }
}
