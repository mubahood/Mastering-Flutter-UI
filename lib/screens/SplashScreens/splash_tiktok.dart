import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../data/img.dart';
import '../../widget/my_text.dart';

class TikTokScreen extends StatefulWidget {
  const TikTokScreen();

  @override
  State<TikTokScreen> createState() => _TikTokScreenState();
}

class _TikTokScreenState extends State<TikTokScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 0,
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarIconBrightness: Brightness.light,
            statusBarColor: Colors.black),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        alignment: Alignment.center,
        child: Stack(
          children: [
            Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    Img.get('ic_social_tiktok.png'),
                    color: Colors.white,
                    width: 70,
                    height: 70,
                  ),
                  Container(height: 15),
                  Text("Tik Tok",
                      style: MyText.headline(context)!.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
