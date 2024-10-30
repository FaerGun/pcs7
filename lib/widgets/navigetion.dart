import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavigation extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const BottomNavigation(
      {super.key, required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "lib/assets/home.svg",
              colorFilter:
                  const ColorFilter.mode(Colors.black54, BlendMode.srcIn),
            ),
            activeIcon: SvgPicture.asset(
              "lib/assets/home.svg",
            ),
            label: 'Главная'),
        BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "lib/assets/cart.svg",
              colorFilter:
                  const ColorFilter.mode(Colors.black54, BlendMode.srcIn),
            ),
            activeIcon: SvgPicture.asset(
              "lib/assets/cart.svg",
            ),
            label: 'Корзина'),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            "lib/assets/profile.svg",
            colorFilter:
                const ColorFilter.mode(Colors.black54, BlendMode.srcIn),
          ),
          activeIcon: SvgPicture.asset(
            "lib/assets/profile.svg",
          ),
          label: 'Профиль',
        ),
      ],
      currentIndex: currentIndex,
      selectedItemColor: Colors.blue[800],
      // unselectedItemColor: Colors.grey[500],
      iconSize: 32,
      onTap: onTap,
    );
  }
}
