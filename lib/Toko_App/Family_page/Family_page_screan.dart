import 'package:flutter/material.dart';

import '../Modeal/Modeals.dart';
import '../compontes/Compontres_Toku_App.dart';

class FamilyPageScrean extends StatelessWidget {
  const FamilyPageScrean({Key? key}) : super(key: key);
  // het the problem ????????????
  final List<Item> Family_Item = const [
    Item(
      ArName:'ابن' ,
      soundAr: 'ابن.m4a',
      soundJn: 'son.wav',
      image: "assets/images/family_members/family_son.png",
      jbName: 'musuko ',
      enNmae: 'son',
    ),
    Item(
        ArName:'الآب' ,
        soundAr: 'الاب.m4a',
        soundJn: 'father.wav',
        image: "assets/images/family_members/family_father.png",
        jbName: 'chichi',
        enNmae: 'father'),
    Item(
        ArName:'الام' ,
        soundAr: 'الام.m4a',
        soundJn: 'mother.wav',
        image: "assets/images/family_members/family_mother.png",
        jbName: 'haha',
        enNmae: 'mother'),
    Item(
        ArName:'الابنه' ,
        soundAr: 'الابنه.m4a',
        soundJn: 'daughter.wav',
        image: "assets/images/family_members/family_daughter.png",
        jbName: 'musume ',
        enNmae: 'daughter'),
    Item(
        ArName:'الجد' ,
        soundAr: 'الجد.m4a',
        soundJn: 'grand father.wav',
        image: "assets/images/family_members/family_grandfather.png",
        jbName: 'sofu ',
        enNmae: 'grandfather'),
    Item(
        ArName:'الجدة' ,
        soundAr: 'الجدة.m4a',
        soundJn: 'grand mother.wav',
        image: "assets/images/family_members/family_grandmother.png",
        jbName: 'sobo ',
        enNmae: 'grandmother'),
    Item(
        ArName:'الاخ الصغير' ,
        soundAr: 'الاخ الاصغر.m4a',
        soundJn: 'younger brohter.wav',
        image: "assets/images/family_members/family_younger_brother.png",
        jbName: 'otooto ',
        enNmae: 'younger brohter'),
    Item(
        ArName:'الاخت الصغيرة' ,
        soundAr: 'الاخت الاصغر.m4a',
        soundJn: 'younger sister.wav',
        image: "assets/images/family_members/family_younger_sister.png",
        jbName: 'imooto ',
        enNmae: 'younger sister'),
    Item(
        ArName:'الاخ الكبير' ,
        soundAr: 'الاخ الاكبر.m4a',
        soundJn: 'older bother.wav',
        image: "assets/images/family_members/family_older_brother.png",
        jbName: 'ani ',
        enNmae: 'older brother'),
    Item(
        ArName:'الاخت الكبيرة' ,
        soundAr: 'الاخت الاكبر.m4a',
        soundJn: 'older sister.wav',
        image: "assets/images/family_members/family_older_sister.png",
        jbName: 'ane ',
        enNmae: 'older sister'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Family Page'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListItem(
            ClassItem: Family_Item[index],
            color: const Color(0xff5d8b3e),
            ItemType: 'family_members',
          );
        },
        itemCount: Family_Item.length,
      ),
    );
  }
}
