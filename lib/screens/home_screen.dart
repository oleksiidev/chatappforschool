import 'package:chatappforschool/pages/calls_page.dart';
import 'package:chatappforschool/pages/contacts_page.dart';
import 'package:chatappforschool/pages/messages_page.dart';
import 'package:chatappforschool/pages/notifications_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final pages = const [
    MessagesPage(),
    NotificationsPage(),
    CallsPage(),
    ContactsPage(),
  ];
  var index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[index],
      bottomNavigationBar: _BottomNavigationBar(
        onItemSelected: (i){
         setState(() {
           index = i;
         });
        },
      ),
    );
  }
}

class _BottomNavigationBar extends StatelessWidget {
  const _BottomNavigationBar({
    Key? key,
    required this.onItemSelected,
  }) : super(key: key);

   final ValueChanged<int> onItemSelected;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: true,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children:  [
          _NavigationBarItem(
            index: 0,
            lable: 'Messaging',
            icon: CupertinoIcons.bubble_left_bubble_right_fill,
            onTap: onItemSelected,
          ),
          _NavigationBarItem(
            index: 1,
            lable: 'Notifikation',
            icon: CupertinoIcons.bell_solid,
            onTap: onItemSelected,
          ),
          _NavigationBarItem(
            index: 2,
            lable: 'Calls',
            icon: CupertinoIcons.phone_fill,
            onTap: onItemSelected,
          ),
          _NavigationBarItem(
            index: 3,
            lable: 'Contacts',
            icon: CupertinoIcons.person_2_fill,
            onTap: onItemSelected,
          ),
        ],
      ),
    );
  }
}

class _NavigationBarItem extends StatelessWidget {
  const _NavigationBarItem({
    Key? key,
    required this.lable,
    required this.icon,
    required this.index,
    required this.onTap,
  }) : super(key: key);

  final ValueChanged<int> onTap;

  final int index;
  final String lable;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap(index);
      },
      child: SizedBox(
        height: 70,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              size: 20,
            ),
            const SizedBox(
              height: 8,
            ),
            Text(lable, style: const TextStyle(fontSize: 11),),
          ],
        ),
      ),
    );
  }
}
