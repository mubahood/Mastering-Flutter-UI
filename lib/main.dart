import 'package:flutter/material.dart';
import 'package:flutter_ui/screens/MenuRoute.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'data/my_colors.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: MyColors.primary,
          primaryColorDark: MyColors.primaryDark,
          primaryColorLight: MyColors.primaryLight,
          bottomSheetTheme:
              BottomSheetThemeData(backgroundColor: Colors.transparent)),
      home: MenuRoute(),
      routes: <String, WidgetBuilder>{
        '/MenuRoute': (BuildContext context) => new MenuRoute(),
      }));
}
