import 'package:flutter/material.dart';
import 'package:homework/Date_2/Ex4.dart';
import 'package:homework/Date_2/calculator.dart';
import 'package:homework/Date_2/generals.dart';
import 'package:homework/Date_2/homePage.dart';



class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final ButtonStyle btnStyle = ElevatedButton.styleFrom(
      padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 15));

  @override
  Widget build(BuildContext context) {
    var buttons = [
      {'title': 'Calculator', 'onPress': const Calculator()},
      {'title': 'HomePage', 'onPress': const HomePage()},
      {'title': 'Generals', 'onPress': const Generals()},
      {'title': 'BT 4', 'onPress': const Ex4()},
    ];
    return Scaffold(
      appBar: AppBar(
          title: Text(widget.title),
          leading: IconButton(icon: const Icon(Icons.menu), onPressed: () {})),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: buttons.map((item) {
            dynamic onPressNavigation = item['onPress'] ;
            return Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: SizedBox(
                height: 48,
                width: MediaQuery.of(context).size.width - 48,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => onPressNavigation),
                    );
                  },
                  child: Text(
                    "${item['title']}",
                    style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                  style: btnStyle,
                ),
              ),
            );
          }).toList(),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'UI'),
          BottomNavigationBarItem(
              icon: Icon(Icons.navigation_outlined), label: 'Navigation'),
        ],
      ),
    );
  }
}
