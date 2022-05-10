import 'package:flutter/material.dart';

void main() {
  runApp(const Generals());
}

class Generals extends StatelessWidget {
  const Generals({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: const MyHomePage(title: 'Therapist'),
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
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final ButtonStyle btnStyle = ElevatedButton.styleFrom(
      textStyle: const TextStyle(
          fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white),
      padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 10));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(widget.title),
          leading: IconButton(icon: const Icon(Icons.menu), onPressed: () {})),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Padding(padding: EdgeInsets.only(top: 50)),
            const Center(
              child: Text(
                'AVERAGE SALARY',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            const Padding(padding: EdgeInsets.only(top: 15)),
            Center(
              child: ElevatedButton(
                child: const Text('1300/per month'),
                onPressed: () {},
                style: btnStyle,
              ),
            ),
            Card(
              margin: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Expanded(
                    child: Center(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const <Widget>[
                            Padding(padding: EdgeInsets.only(top: 40)),
                            Text(
                              'NGÔN NGỮ MỚI NHẤT',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black),
                            ),
                            Padding(padding: EdgeInsets.only(top: 10)),
                            Text(
                              'Flutter 1.0',
                              style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blueAccent),
                            ),
                            Padding(padding: EdgeInsets.only(top: 40)),
                          ]),
                    ),
                  ),
                  Container(
                    width: 1,
                    color: Colors.black,
                    height: 150,
                  ),
                  Expanded(
                    child: Center(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const <Widget>[
                            Padding(padding: EdgeInsets.only(top: 40)),
                            Text(
                              'HIGHEST SALARY',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black),
                            ),
                            Padding(padding: EdgeInsets.only(top: 10)),
                            Text(
                              'Flutter 1.0',
                              style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blueAccent),
                            ),
                            Padding(padding: EdgeInsets.only(top: 40)),
                          ]),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: const [
                Padding(padding: EdgeInsets.only(left: 12)),
                Text('Most hired job?',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.black))
              ],
            )
          ]),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.generating_tokens),
            label: 'Generals',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.trending_up_rounded),
            label: 'Trending',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Comparison',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.folder_special),
            label: 'Special',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book_online_rounded),
            label: 'Booking',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}
