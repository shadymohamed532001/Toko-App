import 'package:flutter/material.dart';

import '../Modeal/Modeals.dart';
import '../compontes/Compontres_Toku_App.dart';

class PhrasesPageScrean extends StatelessWidget {
  const PhrasesPageScrean({Key? key}) : super(key: key);
  // het the problem ????????????
  final List<Item> Phrase_items = const [
    Item(
      ArName:'لا تنسى الاشتراك' ,
      jbName: 'koudoku suru koto wa wasure nai de kudasai',
      enNmae: 'dont forget to subscribe',
      soundJn: 'dont_forget_to_subscribe.wav',
    ),
    Item(
      ArName:'هل انت قادم' ,
      jbName: 'rai masu ka',
      enNmae: 'are you coming',
      soundJn: 'are_you_coming.wav',
    ),
    Item(
      ArName:'أنا شادي سطيحة ، مهندس برمجيات (مطور مرشح). أتمنى لنفسي أن أكون أفضل قريبًا.' ,
      jbName:
          'Watashi wa sofutō~ea enjinia (firutā kaihatsu-sha) no Shadi Satihadesu. Watashi wa sugu ni yoku naru koto o negatte imasu.',
      enNmae:
          'I am Shadi Satiha, a software engineer (filter developer). I wish myself that I will be better soon.',
      soundJn: 'shady_steha.m4a',
    ),
    Item(
      ArName:'كيف تشعر' ,
      jbName: 'kibun wa dou desu ka ?',
      enNmae: 'how are you feeling',
      soundJn: 'how_are_you_feeling.wav',
    ),
    Item(
      ArName:'احب البرمجة' ,
      jbName: 'watashi wa programming ga daisuk desu',
      enNmae: 'i love programming',
      soundJn: 'i_love_programming.wav',
    ),
    Item(
      ArName:'أنا أحب الرسوم المتحركة' ,
      jbName: 'anime ga daisuk',
      enNmae: 'i love anime',
      soundJn: 'i_love_anime.wav',
    ),
    Item(
      ArName:'البرمجة سهلة' ,
      jbName: 'programming ace',
      enNmae: 'programming is easy',
      soundJn: 'programming_is_easy.wav',
    ),
    Item(
      ArName:'ما اسمك؟' ,
      jbName: 'anata no hana de',
      enNmae: 'what is your name',
      soundJn: 'what_is_your_name.wav',
    ),
    Item(
      ArName:'where are you going' ,
      jbName: 'jerie r cheuuthegawing',
      enNmae: 'where are you going',
      soundJn: 'where_are_you_going.wav',
    ),
    Item(
      ArName:'نعم أنا قادم' ,
      jbName: 'hai m caming',
      enNmae: 'yes im coming',
      soundJn: 'yes_im_coming.wav',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Family Page'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return PhrasesItem(
            phraseItem: Phrase_items[index],
            color: const Color(0xff50b1d2),
            ItemType: 'phrases',
          );
        },
        itemCount: Phrase_items.length,
      ),
    );
  }
}
