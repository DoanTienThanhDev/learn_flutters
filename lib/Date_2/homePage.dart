import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MyHomePage(title: 'Therapist');
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class ImageInfo {
  String image;
  String title;
  String label;
  String star;
  String review;
  ImageInfo(
      {required this.image,
      required this.label,
      required this.review,
      required this.star,
      required this.title});
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> images = <String>[
    'http://media.tinthethao.com.vn/files/bongda/2021/05/24/bongdazcom-nguoi-dai-dien-len-tieng-tuong-lai-kevin-de-bruyne-tai-man-city-da-ro641716795-2200jpg.jpg',
    'https://dudoanketqua.net/wp-content/uploads/2021/04/cau-thu-kevin-de-bruyne-la-ai.jpg',
    'https://vnn-imgs-f.vgcloud.vn/2020/02/27/10/kevin-de-bruyne-1.jpg?width=440',
    'https://cdn.bongdaplus.vn/Assets/Media/2019/12/06/76/7.jpg'
  ];

  final List<ImageInfo> list = [
    ImageInfo(
        image: 'https://cdn.bongdaplus.vn/Assets/Media/2019/12/06/76/7.jpg',
        label: 'Thanh Doan',
        review: "10",
        star: "2",
        title: "thanh Doan"),
    ImageInfo(
        image:
            'http://media.tinthethao.com.vn/files/bongda/2021/05/24/bongdazcom-nguoi-dai-dien-len-tieng-tuong-lai-kevin-de-bruyne-tai-man-city-da-ro641716795-2200jpg.jpg',
        label: 'Thanh Doan',
        review: "10",
        star: "2",
        title: "thanh Doan"),
    ImageInfo(
        image:
            'https://vnn-imgs-f.vgcloud.vn/2020/02/27/10/kevin-de-bruyne-1.jpg?width=440',
        label: 'Thanh Doan',
        review: "10",
        star: "2",
        title: "thanh Doan"),
    ImageInfo(
        image: 'https://cdn.bongdaplus.vn/Assets/Media/2019/12/06/76/7.jpg',
        label: 'Thanh Doan',
        review: "10",
        star: "2",
        title: "thanh Doan")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.sort_rounded),
          )
        ],
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Column(children: <Widget>[
        const Padding(padding: EdgeInsets.symmetric(vertical: 8)),
        SizedBox(
          height: 250,
          child: ListView.separated(
            itemCount: images.length,
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 12),
            itemBuilder: (BuildContext context, int index) {
              return SizedBox(
                child: Image.network(
                  images[index],
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) =>
                const SizedBox(
              height: 250,
              width: 24,
            ),
          ),
        ),
        const Padding(padding: EdgeInsets.symmetric(vertical: 8)),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: const [
            Padding(padding: EdgeInsets.only(left: 16)),
            Expanded(
                child: Text('NearBy Therapist',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black))),
            Text('See more',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black)),
            Padding(padding: EdgeInsets.only(left: 16)),
          ],
        ),
        const Padding(padding: EdgeInsets.symmetric(vertical: 5)),
        Expanded(
          child: ListView.separated(
              scrollDirection: Axis.vertical,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                            height: 100,
                            width: 150,
                            child: Image.network(list[index].image)),
                        const Padding(padding: EdgeInsets.only(left: 10)),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                                padding: EdgeInsets.symmetric(vertical: 2)),
                            Text(
                              list[index].title,
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                            ),
                            const Padding(
                                padding: EdgeInsets.symmetric(vertical: 4)),
                            Text(
                              list[index].label,
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal),
                            ),
                            const Padding(
                                padding: EdgeInsets.symmetric(vertical: 4)),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Icon(Icons.star, size: 18),
                                const Padding(
                                    padding: EdgeInsets.only(left: 2)),
                                Text(
                                  list[index].star,
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                                const Padding(
                                    padding: EdgeInsets.only(left: 10)),
                                Text(
                                  "(" + list[index].review + " Reviews)",
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ));
              },
              separatorBuilder: (BuildContext context, int index) =>
                  const SizedBox(
                    height: 12,
                    width: 24,
                  ),
              itemCount: list.length),
        ),
      ]),
    );
  }
}
