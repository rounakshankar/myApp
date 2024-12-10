import 'package:flutter/material.dart';
import 'package:foodapp/Pages/Setting_page.dart';
import 'package:foodapp/components/myDrawerTitle.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Column(
        children: [
          // app logo
          Padding(
            padding: const EdgeInsets.only(top:100.0),
            child: Icon(
              Icons.lock_open_rounded,
              size:80,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Divider(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          // home list title
          MyDrawerTitle(
              text: "H O M E",
              icon: Icons.home,
              onTap: () => Navigator.pop(context),
          ),
          // setting list title
          MyDrawerTitle(
              text: "S E T T I N G",
              icon: Icons.settings,
              onTap: (){
                Navigator.pop(context);
                Navigator.push(context,MaterialPageRoute(builder: (context) => const SettingPage(),
                ));
              }
          ),

          const Spacer(),
          // log out list title
          MyDrawerTitle(
              text: "L O G O U T",
              icon: Icons.logout,
              onTap: (){}
          ),
          const SizedBox(height: 25),
        ],
      ),
    );
  }
}