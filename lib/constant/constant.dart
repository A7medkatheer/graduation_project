// ignore_for_file: camel_case_types, library_private_types_in_public_api, unused_element
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/home.dart';
import 'package:flutter_application_1/pages/access.dart';
import 'package:flutter_application_1/profile/profile_page.dart';
import 'package:flutter_application_1/profile/setting_screen.dart';

class bottom_tab_bar extends StatefulWidget {
  const bottom_tab_bar({super.key});

  @override
  _BottomTabBarState createState() => _BottomTabBarState();
}

class _BottomTabBarState extends State<bottom_tab_bar> {
  int _selectedIndex = 0;

  void _onIconTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    switch (index) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const HomeScreen()),
        );
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const SettingScreen()),
        );
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Access()),
        );
        break;
      case 3:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ProfilePage()),
        );
        break;
    }
  }

  Widget _buildTabItem(IconData icon, String label, int index) {
    return GestureDetector(
      onTap: () => _onIconTapped(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: _selectedIndex == index
                ? const Color(0xffD0FD3E)
                : Colors.white,
          ),
          Text(
            label,
            style: TextStyle(
              color: _selectedIndex == index
                  ? const Color(0xffD0FD3E)
                  : Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildTabItem(Icons.home, 'Home', 0),
        _buildTabItem(Icons.settings, 'Settings', 1),
        _buildTabItem(Icons.bar_chart, 'Calory', 2),
        _buildTabItem(Icons.person_3_outlined, 'Profile', 3),
      ],
    );
  }
}

class Rate_Us extends StatelessWidget {
  const Rate_Us({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(40.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            '   Rate Us',
            style: TextStyle(color: Color(0xffD0FD3E), fontSize: 27),
          ),
          Icon(
            Icons.star_outlined,
            color: Colors.orange,
            size: 35,
          ),
          Icon(
            Icons.star_outlined,
            color: Colors.orange,
            size: 35,
          ),
          Icon(
            Icons.star_outlined,
            color: Colors.orange,
            size: 35,
          ),
          Icon(
            Icons.star_outlined,
            color: Colors.orange,
            size: 35,
          ),
          Icon(
            Icons.star_border_outlined,
            color: Colors.white,
            size: 35,
          )
        ],
      ),
    );
  }
}

Widget _buildExerciseHeader({required String title}) {
  return Padding(
    padding: const EdgeInsets.only(right: 200.0, top: 20),
    child: Container(
      height: 44,
      width: 250,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          //  color: Color.fromARGB(255, 83, 76, 76),
          color: const Color(0xffD0FD3E)),
      child: Center(
        child: Text(
          title,
          style: const TextStyle(color: Colors.black, fontSize: 16),
        ),
      ),
    ),
  );
}

Widget _buildExerciseCard({
  required String title,
  required String subtitle,
  required String imagePath,
}) {
  return Container(
    height: 120,
    width: 382,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30),
      color: const Color.fromARGB(255, 83, 76, 76),
    ),
    child: Row(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 20),
              child: Text(
                title,
                style: const TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 7.0, left: 10),
              child: Text(
                subtitle,
                style: const TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20.0, left: 30),
              child: Text(
                '3 Sets 15-12-10 Reps',
                style: TextStyle(color: Color(0xffD0FD3E), fontSize: 20),
              ),
            ),
          ],
        ),
        const SizedBox(width: 3),
        Image.asset(
          imagePath,
          width: 160,
          height: 115,
          fit: BoxFit.cover,
        ),
      ],
    ),
  );
}
