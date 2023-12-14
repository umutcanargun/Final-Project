import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text('Drawer Header'),
          ),
          ListTile(
            title: const Text('Anasayfa'),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            title: const Text('Değerlendirmeler'),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            title: const Text('Profilim'),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            title: const Text('Katalog'),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            title: const Text('Takvim'),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          Divider(),
          ListTile(
            onTap: () {},
            title: const Row(
              children: [
                Text('Tobeto'),
                SizedBox(width: 8),
                Icon(Icons.home),
              ],
            ),
          ),
          Container(
            width: 100,
            decoration: BoxDecoration(
                border: Border.all(color: Color.fromARGB(108, 112, 112, 112)),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: ListTile(
              title: const Text('Pair-1'),
              onTap: () {},
              trailing: const Icon(Icons.supervised_user_circle),
            ),
          ),
        ],
      ),
    );
  }
}
