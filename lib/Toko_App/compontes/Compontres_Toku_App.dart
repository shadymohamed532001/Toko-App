import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import '../Modeal/Modeals.dart';

// ignore: must_be_immutable
class Category  extends StatelessWidget {
   Category ({super.key,  required this.ontap,required this.text, this.color,required this.image});
  String text ;
  Function() ontap ;
  String image ;
  Color? color;
@override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20,
        left: 20,
        right: 20,
        bottom: 10
      ),
      child: GestureDetector(
        onTap: ontap,
        child: Container(
          height: 140,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: color,
          ),
          child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.cover
                  )
                ),
              ),
            ),
            Expanded(child: Text(
                text,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: 'Rajdhani'
              ),
            )),
            const Padding (
              padding:  EdgeInsets.all(8.0),
              child: Icon(
                Icons.align_horizontal_right_rounded,
                color: Colors.white,
              ),
            )
          ],
          ),
        ),
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  // ignore: non_constant_identifier_names
  const ListItem({Key? key, required this.color, required this.ClassItem, required this.ItemType, }) : super(key: key);
  // ignore: non_constant_identifier_names
  final Item ClassItem;
  final String ItemType;
  final Color color ;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(7.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: color,
        ),
        child: Row(
          children: [
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10)
                ),
                color: Color(0xfffff4db),

              ),
              child: Image(
                  image:AssetImage(ClassItem.image!)
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left :16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min  ,
                  children: [
                    Text(
                      ClassItem.jbName,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                          fontSize: 18,
                          color: Colors.white
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      ClassItem.enNmae,
                      style: const TextStyle(
                          fontSize: 18,
                          color: Colors.white
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      ClassItem.ArName,
                      style: const TextStyle(
                          fontSize: 18,
                          color: Colors.white
                      ),
                    )
                  ],
                ),
              ),
            ),
            Column(
              children: [
                IconButton(
                  onPressed: ()
                  {
                    AudioCache Player =AudioCache(
                      prefix: 'assets/sounds/$ItemType/'
                    );
                    Player.play(ClassItem.soundJn);
                  },
                   icon: const Icon(Icons.navigate_next_rounded,
                    color: Colors.white,
                    size: 25,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                IconButton(
                  onPressed: ()
                  {AudioCache Player =AudioCache(
                      prefix: 'assets/sounds/$ItemType/'
                  );
                  Player.play(ClassItem.soundAr!);
                  },
                  icon: const Icon(Icons.navigate_next_rounded,
                    color: Colors.white,
                    size: 25,
                  ),
                ),
                // IconButton(
                //   onPressed: ()
                //   {
                //     AudioCache Player =AudioCache(
                //         prefix: 'assets/sounds/$ItemType/'
                //     );
                //     Player.play(ClassItem.sound);
                //   },
                //   icon: Icon(Icons.navigate_next_rounded,
                //     color: Colors.white,
                //     size: 25,
                //   ),
                // ),

              ],
            )
          ],
        ),
      ),
    );
  }
}
class PhrasesItem extends StatelessWidget {
  const PhrasesItem({Key? key, required this.color, required this.ItemType, required this.phraseItem, }) : super(key: key);
  final Item phraseItem;
  final String ItemType;
  final Color color ;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 110,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: color,
        ),
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left :16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min  ,
                  children: [
                    Text(
                      phraseItem.jbName,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,

                      style: const TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    Text(
                      phraseItem.enNmae,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                          fontSize: 18,
                          color: Colors.white
                      ),
                    ),
                    Text(
                      phraseItem.ArName,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,

                      style: const TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      )
                    )
                  ],
                ),
              ),
            ),
            Column(
              children: [
                IconButton(
                  onPressed: ()
                  {
                    AudioCache Player =AudioCache(
                        prefix: 'assets/sounds/$ItemType/'
                    );
                    Player.play(phraseItem.soundJn);
                  },
                  icon: const Icon(Icons.navigate_next_rounded,
                    color: Colors.white,
                    size: 33,
                  ),
                ),
                IconButton(
                  onPressed: ()
                  {
                    AudioCache Player =AudioCache(
                        prefix: 'assets/sounds/$ItemType/'
                    );
                    Player.play(phraseItem.soundJn);
                  },
                  icon: const Icon(Icons.navigate_next_rounded,
                    color: Colors.white,
                    size: 33,
                  ),
                )
              ],
            )

          ],
        ),
      ),
    );
  }
}


