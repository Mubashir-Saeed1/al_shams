import 'package:al_shams/controllers/general_controller.dart';
import 'package:al_shams/utils/custom_widgets/al_colors.dart';
import 'package:al_shams/views/cart_screen.dart';
import 'package:al_shams/views/favourites_screen.dart';
import 'package:al_shams/views/home_screen.dart';
import 'package:al_shams/views/profile_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigationScreen extends StatelessWidget {
  final _generalController = Get.find<GeneralController>();
  static List<Widget> pages = [
    HomeScreen(),
    CartScreen(),
    FavouritesScreen(),
    ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AlColors.scaffoldBackgroundColor,
      body: Obx(() => pages[_generalController.homeIndex.value]),
      bottomNavigationBar: Obx(
        ()=> BottomNavigationBar(
          unselectedItemColor: AlColors.textColor,
          selectedItemColor: AlColors.buttonColor,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.cart), label: 'Cart'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border_outlined), label: 'Favourites'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline_rounded), label: 'Profile')
          ],
          showSelectedLabels: true,
          showUnselectedLabels: true,
          currentIndex: _generalController.homeIndex.value,
          onTap: (index) {
            _generalController.homeIndex.value = index;
            print("Selected Index: $index");
          },
        ),
      ),
    );
  }
}
