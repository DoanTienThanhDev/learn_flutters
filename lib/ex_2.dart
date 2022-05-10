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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        title: Text(widget.title),
        actions: const [
          Icon(Icons.sort),
          Padding(
            padding: EdgeInsets.only(right: 16),
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 200,
            margin: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const <Widget>[
                Image(
                    image: NetworkImage(
                        'https://vipbrandacademy.com/wp-content/uploads/2021/06/chuyen-vip-tg-20210623-bai1a.jpg')),
                Image(
                    image: NetworkImage(
                        'https://vipbrandacademy.com/wp-content/uploads/2021/06/chuyen-vip-tg-20210623-bai1a.jpg')),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              verticalDirection: VerticalDirection.down,
              children: const <Widget>[
                Text('NearBy Therapists',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    )),
                Text('View More',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w600))
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            height: 400,
            child: ListView(children: <Widget>[
              Card(
                margin: const EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  children: <Widget>[
                    const Image(
                        width: 150,
                        image: NetworkImage(
                            'https://vipbrandacademy.com/wp-content/uploads/2021/06/chuyen-vip-tg-20210623-bai1a.jpg')),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const Text('Thanh Doan',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600)),
                          const Text('Doan Tien Thanh',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal)),
                          Row(
                            children: const <Widget>[
                              Icon(Icons.star, size: 18),
                              Padding(padding: EdgeInsets.only(left: 4)),
                              Text(
                                '4.8    (Review)',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Card(
                margin: const EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  children: <Widget>[
                    const Image(
                        width: 150,
                        image: NetworkImage(
                            'https://vipbrandacademy.com/wp-content/uploads/2021/06/chuyen-vip-tg-20210623-bai1a.jpg')),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const Text('Thanh Doan',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600)),
                          const Text('Doan Tien Thanh',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal)),
                          Row(
                            children: const <Widget>[
                              Icon(Icons.star, size: 18),
                              Padding(padding: EdgeInsets.only(left: 4)),
                              Text(
                                '4.8    (Review)',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Card(
                margin: const EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  children: <Widget>[
                    const Image(
                        width: 150,
                        image: NetworkImage(
                            'https://vipbrandacademy.com/wp-content/uploads/2021/06/chuyen-vip-tg-20210623-bai1a.jpg')),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const Text('Thanh Doan',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600)),
                          const Text('Doan Tien Thanh',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal)),
                          Row(
                            children: const <Widget>[
                              Icon(Icons.star, size: 18),
                              Padding(padding: EdgeInsets.only(left: 4)),
                              Text(
                                '4.8    (Review)',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Card(
                margin: const EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  children: <Widget>[
                    const Image(
                        width: 150,
                        image: NetworkImage(
                            'https://vipbrandacademy.com/wp-content/uploads/2021/06/chuyen-vip-tg-20210623-bai1a.jpg')),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const Text('Thanh Doan',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600)),
                          const Text('Doan Tien Thanh',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal)),
                          Row(
                            children: const <Widget>[
                              Icon(Icons.star, size: 18),
                              Padding(padding: EdgeInsets.only(left: 4)),
                              Text(
                                '4.8    (Review)',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ]),
          )
        ],
      ),
    );
  }
}
