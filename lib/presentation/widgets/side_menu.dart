import 'package:flutter/material.dart';
import 'package:widgets_app/menu/menu_items.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  int navDrawerIndex = 0;
  @override
  Widget build(BuildContext context) {
    final hasNotch = MediaQuery.of(context).viewPadding.top > 35;

    return NavigationDrawer(
      selectedIndex: navDrawerIndex,
      onDestinationSelected: (value) {
        navDrawerIndex = value;
        setState(() {});
      },
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(28, hasNotch ? 0 : 20, 16, 10),
          child: const Text('Main'),
        ),
        ...appMenuItems.sublist(0, 3).map((menu) => NavigationDrawerDestination(
              icon: Icon(menu.icon),
              label: Text(menu.title),
            )),
        const Padding(
          padding: EdgeInsets.fromLTRB(28, 20, 16, 10),
          child: Divider(),
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(28, 10, 16, 10),
          child: Text('More options'),
        ),
        ...appMenuItems.sublist(3).map((menu) => NavigationDrawerDestination(
              icon: Icon(menu.icon),
              label: Text(menu.title),
            )),
      ],
    );
  }
}
