

import 'package:flutter/material.dart';

import '../Family_page/Family_page_screan.dart';
import '../Numbers_page/Number_page_screan.dart';
import '../color_page/Color_page_screan.dart';
import '../compontes/Compontres_Toku_App.dart';
import '../phrases_page/Phrases_page_screan.dart';

class TokoHomeScrean extends StatelessWidget {
  const TokoHomeScrean({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEEE2D8),
      // appBar: AppBar(
      //   backgroundColor: Color(0xff342448),
      //   leading: Icon(Icons.menu_rounded),
      //   title: Text(
      //     'Tuko App',
      //   ),
      //   actions: [
      //     Icon(
      //       Icons.notifications_on_outlined,
      //
      //     ),
      //   ],
      // ),
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: ()
          {

          },
          icon: const Icon(
            Icons.menu_rounded
          ),
        ),
        title: const Text(
          'Catogy Screan',
          style: TextStyle(
            fontSize: 22,
            fontFamily:'Rajdhani'
          ),
        ),
        titleSpacing: 20,
        actions: [
          IconButton(
            onPressed: ()
            {

            },
            icon: const Icon(
              Icons.notifications_active_outlined,
              size: 20,
            ),

          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Category(
                ontap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const NumberPageScrean()));
                },
                text: 'Nembers',
                 color: const Color(0xff3a5775),
                image: 'assets/images/numbers/Numbers.png'),
          ),
          Expanded(
            child: Category(
                ontap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const FamilyPageScrean()));
                },
                text: 'Family Members',
                color: const Color(0xff5d8b3e),
                image: 'assets/images/family_members/familys.jpg'),
          ),
          Expanded(
            child: Category(
                ontap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const ColorPageScrean()));
                },
                text: 'Colors',
                color: const Color(0xff834cac),
                image: 'assets/sounds/phrases/colors.webp'),
          ),
          Expanded(
            child: Category(
                ontap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const PhrasesPageScrean()));
                },
                text: ' Phrases',
                color: const Color(0xff438edb),
                image: 'assets/sounds/phrases/phrases.jpg'),
          ),
          // Category(
          //     ontap: () {
          //       Navigator.push(
          //           context,
          //           MaterialPageRoute(
          //               builder: (context) => NumberPageScrean()));
          //     },
          //     text: 'Nembers',
          //     color: Color(0xff3a5775),
          //     image: 'assets/images/numbers/Numbers.png'),
          // Category(
          //     ontap: () {
          //       Navigator.push(
          //           context,
          //           MaterialPageRoute(
          //               builder: (context) => NumberPageScrean()));
          //     },
          //     text: 'Nembers',
          //     color: Color(0xff3a5775),
          //     image: 'assets/images/numbers/Numbers.png'),


          // Category(
          //   ontap: ()
          //   {
          //     Navigator.push(context, MaterialPageRoute(builder: (context) => NumberPageScrean()));
          //   },
          //   text: 'Nembers',
          //   color: Color(0xffff9f3b),
          // ),
          // Expanded(
          //   child: Category(
          //     ontap: ()
          //     {
          //       Navigator.push(context, MaterialPageRoute(builder: (context) => FamilyPageScrean()));
          //
          //     },
          //     color: Color(0xff527d31),
          //     text: 'family_members',
          //   ),
          // ),
          // Expanded(
          //   child: Category(
          //     ontap: ()
          //     {
          //       Navigator.push(context, MaterialPageRoute(builder: (context) => ColorPageScrean()));
          //     },
          //     text: 'Colors',
          //     color: Color(0xff854cae),
          //   ),
          // ),
          // Expanded(
          //   child: Category(
          //     ontap: ()
          //     {
          //       Navigator.push(context, MaterialPageRoute(builder: (context) => PhrasesPageScrean()));
          //     },
          //     color: Color(0xff51b0d5),
          //     text: 'phrases',
          //   ),
          // ),
        ],
      ),
    );
  }
}
