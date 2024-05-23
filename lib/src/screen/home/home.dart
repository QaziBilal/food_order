import 'package:flutter/material.dart';
import 'package:food_order_app/src/helper/constants.dart';
import 'package:food_order_app/src/screen/order/orderScreen.dart';
import 'package:food_order_app/src/screen/profile/profileScreen.dart';
import 'package:food_order_app/src/screen/search/searchScreen.dart';

import 'homeScreen.dart';

class HomwPage extends StatefulWidget {
  @override
  _HomwPageState createState() => _HomwPageState();
}

class _HomwPageState extends State<HomwPage> {
  int _currentIndex = 0;

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _getBody(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: true,
        unselectedLabelStyle:
            TextStyles.styleYu.copyWith(fontSize: 14, color: AppColors.grey),
        selectedLabelStyle: TextStyles.styleYu
            .copyWith(fontSize: 14, color: AppColors.activeColor),
        currentIndex: _currentIndex,
        onTap: onTabTapped,
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.white,
        fixedColor: AppColors.activeColor,
        elevation: 0,
        items: [
          BottomNavigationBarItem(
            icon: _currentIndex == 0
                ? Image.asset(
                    AppIcons.homeColor,
                    width: 30,
                    height: 30,
                    fit: BoxFit.contain,
                  )
                : Image.asset(
                    AppIcons.home,
                    width: 30,
                    height: 30,
                    fit: BoxFit.contain,
                  ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: _currentIndex == 1
                ? Image.asset(
                    AppIcons.searchColor,
                    width: 30,
                    height: 30,
                    fit: BoxFit.contain,
                  )
                : Image.asset(
                    AppIcons.search,
                    width: 30,
                    height: 30,
                    fit: BoxFit.contain,
                  ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: _currentIndex == 2
                ? Image.asset(
                    AppIcons.orderColor,
                    width: 30,
                    height: 30,
                    fit: BoxFit.contain,
                  )
                : Image.asset(
                    AppIcons.order,
                    width: 30,
                    height: 30,
                    fit: BoxFit.contain,
                  ),
            label: 'Order',
          ),
          BottomNavigationBarItem(
            icon: _currentIndex == 3
                ? Image.asset(
                    AppIcons.profile,
                    width: 30,
                    height: 30,
                  )
                : Image.asset(
                    AppIcons.profile,
                    width: 30,
                    height: 30,
                  ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  Widget _getBody(int index) {
    switch (index) {
      case 0:
        return HomeScreen();
      case 1:
        return SearchScreen();
      case 2:
        return OrderScreen();
      case 3:
        return ProfileScreen();
      default:
        return const Center(child: Text('Invalid Page'));
    }
  }

  Widget columnText(text) {
    return Column(
      children: [
        Text(
          text,
          style: TextStyles.style.copyWith(
              color: AppColors.black,
              fontSize: 14,
              fontWeight: FontWeight.w600),
        ),
        Container(
          width: 30,
          height: 3,
          decoration: BoxDecoration(
              color: Colors.black, borderRadius: BorderRadius.circular(10)),
        )
      ],
    );
  }
}
