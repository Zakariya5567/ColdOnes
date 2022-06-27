import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GameDetailScreen extends StatelessWidget {
  const GameDetailScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
              size: 25,
            ),
            onPressed: () {
              Get.back();
            },
          ),
          title: Text(
            "GAMES",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Colors.blue,
                  Colors.blue,
                  Color.fromARGB(255, 224, 31, 18),
                  const Color.fromARGB(255, 224, 31, 18),
                ],
              )),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(children: [
                const Text(
                  "PARANOIA",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 46.0,
                  ),
                ),

                SizedBox(
                  height: 10,
                ),

                Container(
                  height: 250,
                  width: 250,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),

                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        "images/image2.png"
                      )
                    )
                  ),
                ),
                SizedBox(
                  height: 20,
                ),

                Container(

                  height: 400,
                  width: 250,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                        ),

                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'A game is a structured form of play, usually'
                          ' undertaken for entertainment or fun, and '
                          'sometimes used as an educational tool.[1] '
                          'Games are different from work, which is usually'
                          ' carried out for remuneration, and from art, '
                          'which is more often an expression of aesthetic '
                          'or ideological elements. However, the distinction '
                          'is not clear-cut, and many games are also considered '
                          'to be work (such as professional players of spectator'
                          ' sports or games) or art (such as jigsaw puzzles '
                          'or games involving an artistic layout such as Mahjong,'
                          ' solitaire, or some video games).',
                      textAlign: TextAlign.left,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 20,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16
                      ),
                    ),
                  ),
                )


              ]
              ),
            ),
          ),
        ));
  }
}
