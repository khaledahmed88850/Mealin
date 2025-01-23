import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mealin/constants.dart';
import 'package:mealin/core/utils/app_routers.dart';

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({
    super.key,
  });

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return NavigationBar(
        onDestinationSelected: (value) {
          selectedIndex = value;
          if (selectedIndex == 1) {
            GoRouter.of(context).push(AppRouters.kSearchView);
          }
          setState(() {});
        },
        selectedIndex: 0,
        indicatorColor: kPrimaryColor,
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          NavigationDestination(icon: Icon(Icons.favorite), label: 'Favorites'),
        ]);
  }
}
