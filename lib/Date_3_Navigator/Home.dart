import 'package:flutter/material.dart';
import 'package:homework/Date_3_Navigator/UserDetail.dart';

class UserInfo {
  int id;
  String name;
  int age;
  String avatar;
  String description;
  UserInfo({
    required this.id,
    required this.name,
    required this.age,
    required this.avatar,
    required this.description,
  });
}

class HomeNavigation extends StatelessWidget {
  final List<UserInfo> users = [
    UserInfo(
      id: 1,
      name: 'Kevin De Bruyne',
      age: 32,
      avatar:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/3/32/De_Bruyne.jpg/1200px-De_Bruyne.jpg',
      description:
          'Kevin De Bruyne là một cầu thủ bóng đá chuyên nghiệp người Bỉ hiện đang thi đấu ở vị trí tiền vệ tấn công cho câu lạc bộ Manchester City tại Premier League và đội tuyển quốc gia Bỉ. Anh đang được xem là một trong những tiền vệ xuất sắc bậc nhất tại thời điểm hiện tại',
    ),
    UserInfo(
      id: 2,
      name: 'Kevin De Bruyne',
      age: 32,
      avatar:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/3/32/De_Bruyne.jpg/1200px-De_Bruyne.jpg',
      description:
          'Kevin De Bruyne là một cầu thủ bóng đá chuyên nghiệp người Bỉ hiện đang thi đấu ở vị trí tiền vệ tấn công cho câu lạc bộ Manchester City tại Premier League và đội tuyển quốc gia Bỉ. Anh đang được xem là một trong những tiền vệ xuất sắc bậc nhất tại thời điểm hiện tại',
    ),
    UserInfo(
      id: 3,
      name: 'Kevin De Bruyne',
      age: 32,
      avatar:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/3/32/De_Bruyne.jpg/1200px-De_Bruyne.jpg',
      description:
          'Kevin De Bruyne là một cầu thủ bóng đá chuyên nghiệp người Bỉ hiện đang thi đấu ở vị trí tiền vệ tấn công cho câu lạc bộ Manchester City tại Premier League và đội tuyển quốc gia Bỉ. Anh đang được xem là một trong những tiền vệ xuất sắc bậc nhất tại thời điểm hiện tại',
    ),
    UserInfo(
      id: 4,
      name: 'Kevin De Bruyne',
      age: 32,
      avatar:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/3/32/De_Bruyne.jpg/1200px-De_Bruyne.jpg',
      description:
          'Kevin De Bruyne là một cầu thủ bóng đá chuyên nghiệp người Bỉ hiện đang thi đấu ở vị trí tiền vệ tấn công cho câu lạc bộ Manchester City tại Premier League và đội tuyển quốc gia Bỉ. Anh đang được xem là một trong những tiền vệ xuất sắc bậc nhất tại thời điểm hiện tại',
    ),
    UserInfo(
      id: 5,
      name: 'Kevin De Bruyne',
      age: 32,
      avatar:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/3/32/De_Bruyne.jpg/1200px-De_Bruyne.jpg',
      description:
          'Kevin De Bruyne là một cầu thủ bóng đá chuyên nghiệp người Bỉ hiện đang thi đấu ở vị trí tiền vệ tấn công cho câu lạc bộ Manchester City tại Premier League và đội tuyển quốc gia Bỉ. Anh đang được xem là một trong những tiền vệ xuất sắc bậc nhất tại thời điểm hiện tại',
    ),
    UserInfo(
      id: 6,
      name: 'Kevin De Bruyne',
      age: 32,
      avatar:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/3/32/De_Bruyne.jpg/1200px-De_Bruyne.jpg',
      description:
          'Kevin De Bruyne là một cầu thủ bóng đá chuyên nghiệp người Bỉ hiện đang thi đấu ở vị trí tiền vệ tấn công cho câu lạc bộ Manchester City tại Premier League và đội tuyển quốc gia Bỉ. Anh đang được xem là một trong những tiền vệ xuất sắc bậc nhất tại thời điểm hiện tại',
    ),
    UserInfo(
      id: 7,
      name: 'Kevin De Bruyne',
      age: 32,
      avatar:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/3/32/De_Bruyne.jpg/1200px-De_Bruyne.jpg',
      description:
          'Kevin De Bruyne là một cầu thủ bóng đá chuyên nghiệp người Bỉ hiện đang thi đấu ở vị trí tiền vệ tấn công cho câu lạc bộ Manchester City tại Premier League và đội tuyển quốc gia Bỉ. Anh đang được xem là một trong những tiền vệ xuất sắc bậc nhất tại thời điểm hiện tại',
    ),
    UserInfo(
      id: 8,
      name: 'Kevin De Bruyne',
      age: 32,
      avatar:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/3/32/De_Bruyne.jpg/1200px-De_Bruyne.jpg',
      description:
          'Kevin De Bruyne là một cầu thủ bóng đá chuyên nghiệp người Bỉ hiện đang thi đấu ở vị trí tiền vệ tấn công cho câu lạc bộ Manchester City tại Premier League và đội tuyển quốc gia Bỉ. Anh đang được xem là một trong những tiền vệ xuất sắc bậc nhất tại thời điểm hiện tại',
    ),
    UserInfo(
      id: 9,
      name: 'Kevin De Bruyne',
      age: 32,
      avatar:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/3/32/De_Bruyne.jpg/1200px-De_Bruyne.jpg',
      description:
          'Kevin De Bruyne là một cầu thủ bóng đá chuyên nghiệp người Bỉ hiện đang thi đấu ở vị trí tiền vệ tấn công cho câu lạc bộ Manchester City tại Premier League và đội tuyển quốc gia Bỉ. Anh đang được xem là một trong những tiền vệ xuất sắc bậc nhất tại thời điểm hiện tại',
    ),
    UserInfo(
      id: 10,
      name: 'Kevin De Bruyne',
      age: 32,
      avatar:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/3/32/De_Bruyne.jpg/1200px-De_Bruyne.jpg',
      description:
          'Kevin De Bruyne là một cầu thủ bóng đá chuyên nghiệp người Bỉ hiện đang thi đấu ở vị trí tiền vệ tấn công cho câu lạc bộ Manchester City tại Premier League và đội tuyển quốc gia Bỉ. Anh đang được xem là một trong những tiền vệ xuất sắc bậc nhất tại thời điểm hiện tại',
    ),
    UserInfo(
      id: 11,
      name: 'Kevin De Bruyne',
      age: 32,
      avatar:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/3/32/De_Bruyne.jpg/1200px-De_Bruyne.jpg',
      description:
          'Kevin De Bruyne là một cầu thủ bóng đá chuyên nghiệp người Bỉ hiện đang thi đấu ở vị trí tiền vệ tấn công cho câu lạc bộ Manchester City tại Premier League và đội tuyển quốc gia Bỉ. Anh đang được xem là một trong những tiền vệ xuất sắc bậc nhất tại thời điểm hiện tại',
    ),
  ];

  final ButtonStyle btnStyle = ElevatedButton.styleFrom(primary: Colors.white);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView.separated(
          scrollDirection: Axis.vertical,
          itemCount: users.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              margin: const EdgeInsets.symmetric(horizontal: 28, vertical: 16),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>  UserDetail(
                        user: users[index],
                      ),
                    ),
                  );
                },
                style: btnStyle,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: SizedBox(
                        child: Image.network(
                          users[index].avatar,
                          width: MediaQuery.of(context).size.width - 56,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(
                        "Full Name: ${users[index].name}",
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 6.0),
                      child: Text(
                        "Age: ${users[index].age}",
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 6, bottom: 12),
                      child: Text(
                        "Age: ${users[index].description}",
                        maxLines: 3,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) => const SizedBox(
            height: 0,
          ),
        ),
      ),
    );
  }
}
