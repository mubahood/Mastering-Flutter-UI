import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

import 'SplashScreens/splash_instagram.dart';
import 'SplashScreens/splash_tiktok.dart';

class MenuRoute extends StatelessWidget {
  const MenuRoute();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FLUTTER UI COURSE"),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.water_drop),
            title: Text("Splash Screen"),
          ),
          ListTile(
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text("Instagram"),
            onTap: () {
              Get.to(() => SplashInstagram());
            },
          ),
          ListTile(
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text("TikTok"),
            onTap: () {
              Get.to(() => TikTokScreen());
            },
          ),
        ],
      ),
    );
  }
}
