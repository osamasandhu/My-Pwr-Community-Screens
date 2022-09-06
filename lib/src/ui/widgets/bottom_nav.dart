import 'package:flutter/material.dart';
import 'package:my_pwr_community_screens/src/utils/color.dart';
import 'package:my_pwr_community_screens/src/utils/images.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarWidget> createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  int _selectedPageIndex = 0;
  late List<Map<String, Widget>> _pages;

  void _selectPage(int index) {
    _selectedPageIndex = index;
    setState(() {});
  }

  BottomNavigationBarItem _getBottomNavbarItem({
    required String icon,
    required String title,
  }) {
    return BottomNavigationBarItem(
      icon: Image.asset(icon, height: 20),
      label: title,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: AppColors.primaryColor,
      unselectedItemColor: AppColors.primaryColor,
//      onTap: _selectPage,
      items: [
        _getBottomNavbarItem(icon: AppImages.courseIcon, title: 'MyCourse'),
        _getBottomNavbarItem(icon: AppImages.homeIcon, title: 'Home'),
        _getBottomNavbarItem(icon: AppImages.communityIcon, title: 'Community'),
      ],
    );
  }
}
