import 'package:flutter/material.dart';
import 'package:homework/Date_3_Navigator/Home.dart';

class SportInfo {
  int id;
  String name;
  String description;
  SportInfo({
    required this.id,
    required this.name,
    required this.description,
  });
}

class UserDetail extends StatefulWidget {
  const UserDetail({Key? key, required this.user}) : super(key: key);

  final UserInfo user;
  @override
  // ignore: no_logic_in_create_state
  State<UserDetail> createState() => _UserDetailPage(user: user);
}

class _UserDetailPage extends State<UserDetail> {
  _UserDetailPage({required this.user});
  final UserInfo user;
  final List<SportInfo> sports = [];
      String _textInput = '';


  @override
  Widget build(BuildContext context) {

    void onSubmit() {
      sports
          .add(SportInfo(id: 1, name: _textInput, description: 'description'));
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              child: Image.network(user.avatar),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 12,
                top: 16,
              ),
              child: Text(
                'Full Name: ${user.name}',
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 16),
              child: Text(
                "Age: ${user.age}",
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.normal),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 16),
              child: Text(
                "Age: ${user.description}",
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.normal),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 16),
              child: Text(
                sports.length > 0 ? sports[0].name : '',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
                children: sports
                    .map(
                      (e) => Text('data'),
                    )
                    .toList()),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 18, right: 28),
              child: TextField(
                onChanged: (text) {
                  setState(() {
                    user.name = text;
                  });
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Sport Name',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16, left: 28, right: 28),
              child: Center(
                child: ElevatedButton(
                  onPressed: onSubmit,
                  style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 120, vertical: 10)),
                  child: const Text(
                    'Add New',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
