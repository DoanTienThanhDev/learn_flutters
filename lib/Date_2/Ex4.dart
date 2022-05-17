import 'package:flutter/material.dart';

class Ex4 extends StatelessWidget {
  const Ex4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MyHomePage(title: 'Enouvo Training Flutter');
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
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(top: 10),
              ),
              Card(
                shape: const BeveledRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                child: Row(
                  children: const <Widget>[
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
                  ],
                ),
              ),
              const Padding(padding: EdgeInsets.only(top: 20)),
              Card(
                shape: const BeveledRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: <Widget>[
                      const CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            'https://media.vov.vn/sites/default/files/styles/large/public/2022-02/5619240_cover_batman.jpg'),
                      ),
                      const Padding(padding: EdgeInsets.only(left: 10)),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            height: 20,
                            width: MediaQuery.of(context).size.width - 180,
                            child: Expanded(
                              child: Row(
                                children: <Widget>[
                                  const Text(
                                    'Bruce Wayne',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal),
                                  ),
                                  const Expanded(child: SizedBox()),
                                  Container(
                                    alignment: Alignment.center,
                                    width: 30,
                                    height: 15,
                                    decoration: BoxDecoration(
                                        color: Colors.deepOrange[600],
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(10.0))),
                                    child: const Text(
                                      'DC',
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          const Padding(padding: EdgeInsets.only(top: 4)),
                          const Text(
                            'I am Batman',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 14),
                          ),
                          const Padding(padding: EdgeInsets.only(top: 4)),
                          const Text(
                            '2022-04-20 03:05',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                child: Column(
                  children: [
                    Container(
                      color: Colors.blueGrey[800],
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Row(
                              children: <Widget>[
                                const CircleAvatar(
                                  radius: 30,
                                  backgroundImage: NetworkImage(
                                      'https://media.vov.vn/sites/default/files/styles/large/public/2022-02/5619240_cover_batman.jpg'),
                                ),
                                const Padding(
                                    padding: EdgeInsets.only(left: 10)),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const <Widget>[
                                    Text(
                                      'Bruce Wayne',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 5),
                                    ),
                                    Text(
                                      'DC-Batman',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 10),
                            ),
                            const Text(
                              'Kevin De Bruyne là một cầu thủ bóng đá chuyên nghiệp người Bỉ hiện đang thi đấu ở vị trí tiền vệ tấn công cho câu lạc bộ Manchester City tại Premier League và đội tuyển quốc gia Bỉ. Anh đang được xem là một trong những tiền vệ xuất sắc bậc nhất tại thời điểm hiện tại.',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Row(
                          children: const [
                            Flexible(
                              child: TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: 'Enter a search term',
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 5),
                              child: Icon(Icons.send_outlined),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
