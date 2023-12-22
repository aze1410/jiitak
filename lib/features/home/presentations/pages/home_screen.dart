import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jiitak/features/home/presentations/pages/search_screen.dart';
import 'package:jiitak/features/home/presentations/widgets/bottomNavBar.dart';

class HomePage extends StatefulWidget {
  final int initialIndex;

  const HomePage({Key? key, this.initialIndex = 0}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  @override
  void initState() {
    _selectedIndex = widget.initialIndex;
    super.initState();
  }

  void navigateBottomBar(int newIndex) {
    setState(() {
      _selectedIndex = newIndex;
    });
  }

  final List<Widget> _pages = [
    SearchPage(),
    JobPage(),
    ScanPage(),
    ChatPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _pages[_selectedIndex],
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: NavBox(
              onTap: (index) => navigateBottomBar(index),
              selectedIndex: _selectedIndex,
            ),
          ),
        ],
      ),
    );
  }
}

class JobPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Job Page'),
    );
  }
}

class ScanPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Scan Page'),
    );
  }
}

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Chat Page'),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Profile Page'),
    );
  }
}
