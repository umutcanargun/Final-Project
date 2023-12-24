import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color.fromARGB(255, 235, 235, 235),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 8, 8, 8),
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 40, 0, 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "lib/assets/tobeto.png",
                    width: 120,
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.close))
                ],
              ),
            ),
            SizedBox(
              height: 40,
              child: ListTile(
                title: Container(
                  alignment: Alignment.topLeft,
                  child: const Text(
                    'Anasayfa',
                    style: TextStyle(
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
            ),
            SizedBox(
              height: 40,
              child: ListTile(
                title: Container(
                  alignment: Alignment.topLeft,
                  child: const Text(
                    'Değerlendirmeler',
                    style: TextStyle(
                        fontFamily: 'Raleway', fontWeight: FontWeight.bold),
                  ),
                ),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
            ),
            SizedBox(
              height: 40,
              child: ListTile(
                title: Container(
                  alignment: Alignment.topLeft,
                  child: const Text(
                    'Profilim',
                    style: TextStyle(
                        fontFamily: 'Raleway', fontWeight: FontWeight.bold),
                  ),
                ),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
            ),
            SizedBox(
              height: 40,
              child: ListTile(
                title: Container(
                  alignment: Alignment.topLeft,
                  child: const Text(
                    'Katalog',
                    style: TextStyle(
                        fontFamily: 'Raleway', fontWeight: FontWeight.bold),
                  ),
                ),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
            ),
            SizedBox(
              height: 40,
              child: ListTile(
                title: Container(
                  alignment: Alignment.topLeft,
                  child: const Text(
                    'Takvim',
                    style: TextStyle(
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
            ),
            const Divider(
              height: 40,
              indent: 10,
              endIndent: 10,
              color: Color.fromARGB(70, 136, 136, 136),
            ),
            ListTile(
              onTap: () {},
              title: const Row(
                children: [
                  Text(
                    'Tobeto',
                    style: TextStyle(
                        fontFamily: 'Raleway', fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 8),
                  Icon(
                    Icons.home,
                    color: Color.fromARGB(255, 89, 89, 89),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  border: Border.all(
                    style: BorderStyle.solid,
                    color: Color.fromARGB(70, 136, 136, 136),
                  ),
                  borderRadius: BorderRadius.circular(40)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: ListTile(
                      title: const Text(
                        'Pair-1',
                        style: TextStyle(
                            fontFamily: 'Raleway', fontWeight: FontWeight.bold),
                      ),
                      onTap: () {},
                    ),
                  ),
                  const Spacer(),
                  Expanded(
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 20,
                      child: ClipOval(
                        child: SizedBox(
                          width: 40,
                          height: 40,
                          child: Image.asset(
                            "lib/assets/user.jpeg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
