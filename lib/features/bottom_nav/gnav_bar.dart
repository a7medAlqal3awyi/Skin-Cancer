import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:skin_cancer_app/features/home/home_screen.dart';

class MyGnavBar extends StatefulWidget {
  const MyGnavBar({super.key});

  @override
  _MyGnavBarState createState() => _MyGnavBarState();
}

class _MyGnavBarState extends State<MyGnavBar> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    Text(
      'Explore',
      style: optionStyle,
    ),
    Text(
      'Profile',
      style: optionStyle,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[100]!,
              gap: 12,
              haptic: true,
              tabBorderRadius: 20.r,
              textStyle: TextStyle(
                fontSize: 13.sp,
                fontWeight: FontWeight.w500,
                color: Color(0xffDB9DD9),
              ),
              activeColor: const Color(0xffDB9DD9),
              iconSize: 24,
              padding: EdgeInsets.symmetric(horizontal: 20.w,
                  vertical: 12.h),
              duration: const Duration(milliseconds: 400),
              tabBackgroundColor: Colors.grey[100]!,
              color: const Color(0xFF9C9DAA),
              tabs: const [
                GButton(
                  icon: Icons.home_work_outlined,
                  text: 'Home',
                ),
                GButton(
                  icon: Icons.local_hospital_outlined,
                  text: 'Clinic',
                ),
                GButton(
                  icon: Icons.person_outline_outlined,
                  text: 'Profile',
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
    );
  }
}
