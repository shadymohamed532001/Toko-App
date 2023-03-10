import 'package:flutter/material.dart';

import '../Modeal/Modeals.dart';
import '../compontes/Compontres_Toku_App.dart';

class NumberPageScrean extends StatelessWidget {
  const NumberPageScrean({Key? key}) : super(key: key);

  final List<Item> Number_items = const [
    Item(
        ArName:'واحد' ,
        soundAr: 'واحد.m4a',
        soundJn: 'number_one_sound.mp3',
        image: "assets/images/numbers/number_one.png",
        jbName: 'ichi',
        enNmae: 'one'),
    Item(
        ArName:'اثنان' ,
        soundAr: 'اثنان.m4a',
        soundJn: 'number_two_sound.mp3',
        image: "assets/images/numbers/number_two.png",
        jbName: 'ni ',
        enNmae: 'two'),
    Item(
        ArName:'ثلاثة' ,
        soundAr: 'ثلاثه.m4a',
        soundJn: 'number_three_sound.mp3',
        image: "assets/images/numbers/number_three.png",
        jbName: 'san',
        enNmae: 'three'),
    Item(
        ArName:'أربعة' ,
        soundAr: 'اربعه.m4a',
        soundJn: 'number_four_sound.mp3',
        image: "assets/images/numbers/number_four.png",
        jbName: 'yon',
        enNmae: 'foure'),
    Item(
        ArName:'خمسة' ,
        soundJn: 'number_five_sound.mp3',
        soundAr: 'خمسه.m4a',
        image: "assets/images/numbers/number_five.png",
        jbName: 'go',
        enNmae: 'five'),
    Item(
        ArName:'ستة' ,
        soundAr: 'سته.m4a',
        soundJn: 'number_six_sound.mp3',
        image: "assets/images/numbers/number_six.png",
        jbName: 'roku',
        enNmae: 'six'),
    Item(
        ArName:'سبعة' ,
        soundAr: 'سبعه.m4a',
        soundJn: 'number_seven_sound.mp3',
        image: "assets/images/numbers/number_seven.png",
        jbName: 'nana',
        enNmae: 'seven'),
    Item(
        ArName:'ثمانية' ,
        soundAr: 'ثمانيه.m4a',
        soundJn: 'number_eight_sound.mp3',
        image: "assets/images/numbers/number_eight.png",
        jbName: 'hachi',
          enNmae: 'eight'),
    Item(
        ArName:'تسعة' ,
        soundAr: 'تسعه.m4a',
        soundJn: 'number_nine_sound.mp3',
        image: "assets/images/numbers/number_nine.png",
        jbName: 'kyuu ',
        enNmae: 'nine'),
    Item(
        ArName:'عشرة' ,
        soundAr: 'عشرة.m4a',
        soundJn: 'number_ten_sound.mp3',
        image: "assets/images/numbers/number_ten.png",
        jbName: 'juu ',
        enNmae: 'ten'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Color(0xff6b4226),
      //   title: Text('Numpers'),
      // ),
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Numbers Screan',
          style: TextStyle(
              fontSize: 22,
              fontFamily:'Rajdhani'
          ),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListItem(
            ClassItem: Number_items[index],
            color: const Color(0xff3a5775),
            ItemType: 'numbers',
          );
        },
        itemCount: Number_items.length,
      ),
    );
  }
}
