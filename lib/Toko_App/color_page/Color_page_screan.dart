import 'package:flutter/material.dart';

import '../Modeal/Modeals.dart';
import '../compontes/Compontres_Toku_App.dart';

class ColorPageScrean extends StatelessWidget {
  const ColorPageScrean({Key? key}) : super(key: key);
  // het the problem ????????????
  final List<Item> Color_Item = const [
    Item(
      ArName:'اسود' ,
      soundAr: 'اسود.m4a',
      soundJn: 'black.wav',
      image: "assets/images/colors/color_black.png",
      jbName: 'Burakku ',
      enNmae: 'black',
    ),
    Item(
        ArName:'بني' ,
        soundAr: 'بني.m4a',
        soundJn: 'brown.wav',
        image: "assets/images/colors/color_brown.png",
        jbName: 'Chairo',
        enNmae: 'brown'),
    Item(
        ArName:'أصفر مغبر' ,
        soundAr: 'اصفر مغبرا.m4a',
        soundJn: 'dusty yellow.wav',
        image: "assets/images/colors/color_dusty_yellow.png",
        jbName: 'Hokori ppoi Kiiro',
        enNmae: 'dusty yellow'),
    Item(
        ArName:'رمادي' ,
        soundAr: 'الرمادي.m4a',
        soundJn: 'gray.wav',
        image: "assets/images/colors/color_gray.png",
        jbName: 'Gure ',
        enNmae: 'gray'),
    Item(
        ArName:'اخضر' ,
        soundAr: 'احضر.m4a',
        soundJn: 'green.wav',
        image: "assets/images/colors/color_green.png",
        jbName: 'Midori ',
        enNmae: 'green'),
    Item(
        ArName:'احمر' ,
        soundAr: 'احمر.m4a',
        soundJn: 'red.wav',
        image: "assets/images/colors/color_red.png",
        jbName: 'AKa ',
        enNmae: 'red'),
    Item(
        ArName:'ابيض' ,
        soundAr: 'ابيض.m4a',
        soundJn: 'white.wav',
        image: "assets/images/colors/color_white.png",
        jbName: 'Shiroi ',
        enNmae: 'white'),
    Item(
        ArName:'اصفر' ,
        soundAr: 'اصفر.m4a',
        soundJn: 'yellow.wav',
        image: "assets/images/colors/yellow.png",
        jbName: 'kiiro ',
        enNmae: 'yellow'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Colors'),
      ),
      body: ListView.builder(
        physics: const AlwaysScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return ListItem(
            ClassItem: Color_Item[index],
            color: const Color(0xff834cac),
            ItemType: 'colors',
          );
        },
        itemCount: Color_Item.length,
      ),
    );
  }
}
