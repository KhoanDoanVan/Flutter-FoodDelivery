import 'package:flutter/material.dart';
import 'package:flutter_fooddelivery/components/my_drawer_title.dart';
import 'package:flutter_fooddelivery/pages/settings_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: Icon(
              Icons.lock_open_rounded,
              size: 40,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Divider(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          MyDrawerTitle(
              text: "H O M E",
              onTap: () => Navigator.pop(context),
              icon: Icons.home),
          MyDrawerTitle(
              text: "S E T T I N G S",
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SettingsPage()));
              },
              icon: Icons.settings),
          const Spacer(),
          MyDrawerTitle(text: "L O G O U T", onTap: () {}, icon: Icons.logout),
          const SizedBox(
            height: 25,
          )
        ],
      ),
    );
  }
}
