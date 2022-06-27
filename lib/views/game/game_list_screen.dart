import 'package:cold_ones/controller/game_controller.dart';
import 'package:cold_ones/views/game/game_detail_screen.dart';
import 'package:expandable/expandable.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'add_players_screen.dart';

class GameListScreen extends StatelessWidget {
  GameListScreen({Key key}) : super(key: key);

  final GlobalKey<ExpansionTileCardState> partyKey = GlobalKey();
  final GlobalKey<ExpansionTileCardState> truthKey = GlobalKey();
  final GlobalKey<ExpansionTileCardState> neverKey = GlobalKey();
  final GlobalKey<ExpansionTileCardState> coupleKey = GlobalKey();
  final GlobalKey<ExpansionTileCardState> paranoiaKey = GlobalKey();
  final GlobalKey<ExpansionTileCardState> diceKey = GlobalKey();
  final GlobalKey<ExpansionTileCardState> roulKey = GlobalKey();
  final GlobalKey<ExpansionTileCardState> triviaKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(elevation: 0,
          leading:
          IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
              size: 25,
            ),
            onPressed: () {
              Get.back();
            },
          ),
          title: const Text(
            "Home",
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
              Color.fromARGB(255, 224, 31, 18),
            ],
          )),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child:

                    Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Column(children: [
                    const Text(
                      "GAMES",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 46.0,
                      ),
                    ),

                    const SizedBox(
                      height: 10,
                    ),

//----------------------------------------------------------------------------------
                    //party mode

                    InkWell(
                              onLongPress: (){

                                Get.to(const GameDetailScreen());
                              },
                              child:
                              Container(
                                decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                    gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [
                                        Colors.cyanAccent,
                                        Colors.cyanAccent,
                                        Colors.cyanAccent,
                                        Colors.deepOrangeAccent,
                                      ],
                                    )),


                                child:
                                ExpansionTileCard(
                                  key: partyKey,
                                  baseColor: Colors.transparent,
                                  expandedColor: Colors.transparent,
                                  expandedTextColor: Colors.black,
                                  title:
                                  Row(
                                    children: [
                                      Container(
                                          height: 100,
                                          width: 80,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),

                                            image: const DecorationImage(
                                                fit: BoxFit.cover,
                                                image: AssetImage(
                                                    "images/game_images/party.png"

                                                )
                                            ),
                                          ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 10,top: 10),
                                          child: SizedBox(
                                            height: 100,
                                            width: MediaQuery.of(context).size.width,

                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: const [
                                                Text("PARTY MODE",style: TextStyle(fontSize: 24,
                                                    color: Colors.black),),
                                                Text("Best way to get the party started.No one is safe!",
                                                  style: TextStyle(fontSize: 15, color: Colors.black),),

                                              ],
                                            ),

                                          ),
                                        ),
                                      ),
                                    ],
                                  ),

                                      children: [
                                        const SizedBox(height: 20,),
                                        InkWell(
                                          highlightColor: Colors.blue.shade200,
                                          onTap: (){
                                            Get.to(const AddPlayersScreen());
                                          },
                                          child:
                                          Padding(
                                            padding: const EdgeInsets.only(left: 30.0),
                                            child: Row(
                                              children: [
                                                Container(
                                                  height:30,width: 30,
                                                  decoration: const BoxDecoration(
                                                    image: DecorationImage(
                                                        fit: BoxFit.fill,
                                                        image: AssetImage(
                                                          "images/image1.png",
                                                        )
                                                    ),
                                                  ),
                                                  // child: Center(
                                                  //   child: Icon(Icons.lock,color: Colors.white70,size: 25,),
                                                  // ),
                                                ),

                                                const SizedBox(width: 10,),
                                                const Text("HOW TO PLAY?"),
                                              ],
                                            ),


                                          ),
                                        ),
                                        const Divider(),
                                        InkWell(
                                          highlightColor: Colors.blue.shade200,
                                          onTap: (){
                                            Get.to(const AddPlayersScreen());
                                          },
                                          child:
                                          Padding(
                                            padding: const EdgeInsets.only(left: 30.0),
                                            child: Row(
                                              children: [
                                                Container(
                                                  height:30,width: 30,
                                                  decoration: const BoxDecoration(
                                                    image: DecorationImage(
                                                        fit: BoxFit.fill,
                                                        image: AssetImage(
                                                          "images/image1.png",
                                                        )
                                                    ),
                                                  ),
                                                  // child: Center(
                                                  //   child: Icon(Icons.lock,color: Colors.white70,size: 25,),
                                                  // ),
                                                ),

                                                const SizedBox(width: 10,),
                                                const Text("CLASSIC"),
                                              ],
                                            ),


                                          ),
                                        ),
                                        const Divider(),
                                        InkWell(
                                          highlightColor: Colors.blue.shade200,
                                          onTap: (){


                                          },
                                          child:
                                          Padding(
                                            padding: const EdgeInsets.only(left: 30.0),
                                            child: Row(
                                              children: [
                                                Container(
                                                  height:30,width: 30,
                                                  decoration: const BoxDecoration(
                                                    image: DecorationImage(
                                                        fit: BoxFit.fill,
                                                        image: AssetImage(
                                                          "images/image1.png",
                                                        )
                                                    ),
                                                  ),
                                                  child: const Center(
                                                    child: Icon(Icons.lock,color: Colors.white70,size: 25,),
                                                  ),
                                                ),

                                                const SizedBox(width: 10,),
                                                const Text("HOT N' SPICY"),
                                              ],
                                            ),


                                          ),
                                        ),
                                        const Divider(),
                                        InkWell(
                                          highlightColor: Colors.blue.shade200,
                                          onTap: (){


                                          },
                                          child:
                                          Padding(
                                            padding: const EdgeInsets.only(left: 30.0),
                                            child: Row(
                                              children: [
                                                Container(
                                                  height:30,width: 30,
                                                  decoration: const BoxDecoration(
                                                    image: DecorationImage(
                                                        fit: BoxFit.fill,
                                                        image: AssetImage(
                                                          "images/image1.png",
                                                        )
                                                    ),
                                                  ),
                                                  child: const Center(
                                                    child: Icon(Icons.lock,color: Colors.white70,size: 25,),
                                                  ),
                                                ),

                                                const SizedBox(width: 10,),
                                                const Text("CRAZY"),
                                              ],
                                            ),


                                          ),
                                        ),
                                        const SizedBox(height: 20,)
                                      ],

                                  trailing:const Text(''),

                                  onExpansionChanged:(value){

                                    print("party card");

                                    if(value==true){
                                      //  partyKey.currentState.deactivate();
                                      truthKey.currentState.collapse();
                                      neverKey.currentState.collapse();
                                      coupleKey.currentState.collapse();
                                      paranoiaKey.currentState.collapse();
                                      diceKey.currentState.collapse();
                                      roulKey.currentState.collapse();
                                      triviaKey.currentState.collapse();
                                    }



                                  },

                                ),

                              ),
                            ),

                    const SizedBox(
                      height: 10,
                    ),
//----------------------------------------------------------------------------------
                    // truth or dare

                    InkWell(
                      onLongPress: (){

                        Get.to(const GameDetailScreen());
                      },
                      child:  Container(
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Colors.cyanAccent,
                                Colors.cyanAccent,
                                Colors.cyanAccent,
                                Colors.deepOrangeAccent,
                              ],
                            )),


                        child: ExpansionTileCard(
                          key: truthKey,
                          baseColor: Colors.transparent,
                          expandedColor: Colors.transparent,
                          expandedTextColor: Colors.black,

                          title: Row(
                            children: [
                              Container(
                                  height: 100,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),

                                    image: const DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            "images/game_images/truth.png"

                                        )
                                    ),
                                  )

                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10,top: 10),
                                  child: SizedBox(
                                    height: 100,
                                    width: MediaQuery.of(context).size.width,

                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: const [
                                        Text("TRUTH OR DARE",style: TextStyle(fontSize: 24,
                                            color: Colors.black),),
                                        Text("Best way to get the party started.No one is safe!",
                                          style: TextStyle(fontSize: 15, color: Colors.black),),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),

                          children: [
                            const SizedBox(height: 20,),

                            InkWell(
                              highlightColor: Colors.blue.shade200,
                              onTap: (){
                                Get.to(const AddPlayersScreen());
                              },
                              child:
                              Padding(
                                padding: const EdgeInsets.only(left: 30.0),
                                child: Row(
                                  children: [
                                    Container(
                                      height:30,width: 30,
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage(
                                              "images/image1.png",
                                            )
                                        ),
                                      ),
                                      // child: Center(
                                      //   child: Icon(Icons.lock,color: Colors.white70,size: 25,),
                                      // ),
                                    ),

                                    const SizedBox(width: 10,),
                                    const Text("HOW TO PLAY?"),
                                  ],
                                ),


                              ),
                            ),
                            const Divider(),
                            InkWell(
                              highlightColor: Colors.blue.shade200,
                              onTap: (){
                                Get.to(const AddPlayersScreen());
                              },
                              child:
                              Padding(
                                padding: const EdgeInsets.only(left: 30.0),
                                child: Row(
                                  children: [
                                    Container(
                                      height:30,width: 30,
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage(
                                              "images/image1.png",
                                            )
                                        ),
                                      ),
                                      // child: Center(
                                      //   child: Icon(Icons.lock,color: Colors.white70,size: 25,),
                                      // ),
                                    ),

                                    const SizedBox(width: 10,),
                                    const Text("CLASSIC"),
                                  ],
                                ),


                              ),
                            ),
                            const Divider(),
                            InkWell(
                              highlightColor: Colors.blue.shade200,
                              onTap: (){


                              },
                              child:
                              Padding(
                                padding: const EdgeInsets.only(left: 30.0),
                                child: Row(
                                  children: [
                                    Container(
                                      height:30,width: 30,
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage(
                                              "images/image1.png",
                                            )
                                        ),
                                      ),
                                      child: const Center(
                                        child: Icon(Icons.lock,color: Colors.white70,size: 25,),
                                      ),
                                    ),

                                    const SizedBox(width: 10,),
                                    const Text("HOT N' SPICY"),
                                  ],
                                ),


                              ),
                            ),
                            const Divider(),
                            InkWell(
                              highlightColor: Colors.blue.shade200,
                              onTap: (){


                              },
                              child:
                              Padding(
                                padding: const EdgeInsets.only(left: 30.0),
                                child: Row(
                                  children: [
                                    Container(
                                      height:30,width: 30,
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage(
                                              "images/image1.png",
                                            )
                                        ),
                                      ),
                                      child: const Center(
                                        child: Icon(Icons.lock,color: Colors.white70,size: 25,),
                                      ),
                                    ),

                                    const SizedBox(width: 10,),
                                    const Text("CRAZY"),
                                  ],
                                ),


                              ),
                            ),
                            const SizedBox(height: 20,)
                          ],

                          trailing:const Text(''),

                          onExpansionChanged:(value){

                            print("truth card");

                            if(value==true){

                              partyKey.currentState.collapse();
                              //truthKey.currentState.collapse();
                              neverKey.currentState.collapse();
                              coupleKey.currentState.collapse();
                              paranoiaKey.currentState.collapse();
                              diceKey.currentState.collapse();
                              roulKey.currentState.collapse();
                              triviaKey.currentState.collapse();

                            }



                          },
                        ),
                      ),
                    ),

                    const SizedBox(
                      height: 10,
                    ),
//----------------------------------------------------------------------------------
                    // never i have ever

                    InkWell(
                      onLongPress: (){

                        Get.to(const GameDetailScreen());
                      },
                      child:  Container(
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Colors.cyanAccent,
                                Colors.cyanAccent,
                                Colors.cyanAccent,
                                Colors.deepOrangeAccent,
                              ],
                            )),


                        child: ExpansionTileCard(
                          key: neverKey,
                          baseColor: Colors.transparent,
                          expandedColor: Colors.transparent,
                          expandedTextColor: Colors.black,

                          title: Row(
                            children: [
                              Container(
                                  height: 100,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),

                                    image: const DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            "images/game_images/never.png"

                                        )
                                    ),
                                  )

                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10,top: 10),
                                  child: SizedBox(
                                    height: 100,
                                    width: MediaQuery.of(context).size.width,

                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: const [
                                        Text("NEVER HAVE I EVER",style: TextStyle(fontSize: 24,
                                            color: Colors.black),),
                                        Text("Best way to get the party started.No one is safe!",
                                          style: TextStyle(fontSize: 15, color: Colors.black),),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),

                          children: [
                            const SizedBox(height: 20,),
                            InkWell(
                              highlightColor: Colors.blue.shade200,
                              onTap: (){
                                Get.to(const AddPlayersScreen());
                              },
                              child:
                              Padding(
                                padding: const EdgeInsets.only(left: 30.0),
                                child: Row(
                                  children: [
                                    Container(
                                      height:30,width: 30,
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage(
                                              "images/image1.png",
                                            )
                                        ),
                                      ),
                                      // child: Center(
                                      //   child: Icon(Icons.lock,color: Colors.white70,size: 25,),
                                      // ),
                                    ),

                                    const SizedBox(width: 10,),
                                    const Text("HOW TO PLAY?"),
                                  ],
                                ),


                              ),
                            ),
                            const Divider(),
                            InkWell(
                              highlightColor: Colors.blue.shade200,
                              onTap: (){
                                Get.to(const AddPlayersScreen());
                              },
                              child:
                              Padding(
                                padding: const EdgeInsets.only(left: 30.0),
                                child: Row(
                                  children: [
                                    Container(
                                      height:30,width: 30,
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage(
                                              "images/image1.png",
                                            )
                                        ),
                                      ),
                                      // child: Center(
                                      //   child: Icon(Icons.lock,color: Colors.white70,size: 25,),
                                      // ),
                                    ),

                                    const SizedBox(width: 10,),
                                    const Text("CLASSIC"),
                                  ],
                                ),


                              ),
                            ),
                            const Divider(),
                            InkWell(
                              highlightColor: Colors.blue.shade200,
                              onTap: (){


                              },
                              child:
                              Padding(
                                padding: const EdgeInsets.only(left: 30.0),
                                child: Row(
                                  children: [
                                    Container(
                                      height:30,width: 30,
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage(
                                              "images/image1.png",
                                            )
                                        ),
                                      ),
                                      child: const Center(
                                        child: Icon(Icons.lock,color: Colors.white70,size: 25,),
                                      ),
                                    ),

                                    const SizedBox(width: 10,),
                                    const Text("HOT N' SPICY"),
                                  ],
                                ),


                              ),
                            ),
                            const Divider(),
                            InkWell(
                              highlightColor: Colors.blue.shade200,
                              onTap: (){


                              },
                              child:
                              Padding(
                                padding: const EdgeInsets.only(left: 30.0),
                                child: Row(
                                  children: [
                                    Container(
                                      height:30,width: 30,
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage(
                                              "images/image1.png",
                                            )
                                        ),
                                      ),
                                      child: const Center(
                                        child: Icon(Icons.lock,color: Colors.white70,size: 25,),
                                      ),
                                    ),

                                    const SizedBox(width: 10,),
                                    const Text("CRAZY"),
                                  ],
                                ),


                              ),
                            ),
                            const SizedBox(height: 20,)
                          ],

                          trailing:const Text(''),

                          onExpansionChanged:(value){

                            print("never card");

                            if(value==true){
                              partyKey.currentState.collapse();
                              truthKey.currentState.collapse();
                              //neverKey.currentState.collapse();
                              coupleKey.currentState.collapse();
                              paranoiaKey.currentState.collapse();
                              diceKey.currentState.collapse();
                              roulKey.currentState.collapse();
                              triviaKey.currentState.collapse();
                            }



                          },
                        ),
                      ),
                    ),

                    const SizedBox(
                      height: 10,
                    ),
//----------------------------------------------------------------------------------
                    //couples

                    InkWell(
                      onLongPress: (){

                        Get.to(const GameDetailScreen());
                      },
                      child:  Container(
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Colors.cyanAccent,
                                Colors.cyanAccent,
                                Colors.cyanAccent,
                                Colors.deepOrangeAccent,
                              ],
                            )),


                        child: ExpansionTileCard(
                          key:  coupleKey,
                          baseColor: Colors.transparent,
                          expandedColor: Colors.transparent,
                          expandedTextColor: Colors.black,

                          title: Row(
                            children: [
                              Container(
                                  height: 100,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),

                                    image: const DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            "images/game_images/couples.png"

                                        )
                                    ),
                                  )

                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10,top: 10),
                                  child: SizedBox(
                                    height: 100,
                                    width: MediaQuery.of(context).size.width,

                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: const [
                                        Text("COUPLES",style: TextStyle(fontSize: 24,
                                            color: Colors.black),),
                                        Text("Best way to get the party started.No one is safe!",
                                          style: TextStyle(fontSize: 15, color: Colors.black),),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),

                          children: [
                            const SizedBox(height: 20,),
                            InkWell(
                              highlightColor: Colors.blue.shade200,
                              onTap: (){
                                Get.to(const AddPlayersScreen());
                              },
                              child:
                              Padding(
                                padding: const EdgeInsets.only(left: 30.0),
                                child: Row(
                                  children: [
                                    Container(
                                      height:30,width: 30,
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage(
                                              "images/image1.png",
                                            )
                                        ),
                                      ),
                                      // child: Center(
                                      //   child: Icon(Icons.lock,color: Colors.white70,size: 25,),
                                      // ),
                                    ),

                                    const SizedBox(width: 10,),
                                    const Text("HOW TO PLAY?"),
                                  ],
                                ),


                              ),
                            ),
                            const Divider(),
                            InkWell(
                              highlightColor: Colors.blue.shade200,
                              onTap: (){
                                Get.to(const AddPlayersScreen());
                              },
                              child:
                              Padding(
                                padding: const EdgeInsets.only(left: 30.0),
                                child: Row(
                                  children: [
                                    Container(
                                      height:30,width: 30,
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage(
                                              "images/image1.png",
                                            )
                                        ),
                                      ),
                                      // child: Center(
                                      //   child: Icon(Icons.lock,color: Colors.white70,size: 25,),
                                      // ),
                                    ),

                                    const SizedBox(width: 10,),
                                    const Text("CLASSIC"),
                                  ],
                                ),


                              ),
                            ),
                            const Divider(),
                            InkWell(
                              highlightColor: Colors.blue.shade200,
                              onTap: (){


                              },
                              child:
                              Padding(
                                padding: const EdgeInsets.only(left: 30.0),
                                child: Row(
                                  children: [
                                    Container(
                                      height:30,width: 30,
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage(
                                              "images/image1.png",
                                            )
                                        ),
                                      ),
                                      child: const Center(
                                        child: Icon(Icons.lock,color: Colors.white70,size: 25,),
                                      ),
                                    ),

                                    const SizedBox(width: 10,),
                                    const Text("HOT N' SPICY"),
                                  ],
                                ),


                              ),
                            ),
                            const Divider(),
                            InkWell(
                              highlightColor: Colors.blue.shade200,
                              onTap: (){


                              },
                              child:
                              Padding(
                                padding: const EdgeInsets.only(left: 30.0),
                                child: Row(
                                  children: [
                                    Container(
                                      height:30,width: 30,
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage(
                                              "images/image1.png",
                                            )
                                        ),
                                      ),
                                      child: const Center(
                                        child: Icon(Icons.lock,color: Colors.white70,size: 25,),
                                      ),
                                    ),

                                    const SizedBox(width: 10,),
                                    const Text("CRAZY"),
                                  ],
                                ),


                              ),
                            ),
                            const SizedBox(height: 20,)
                          ],

                          trailing:const Text(''),

                          onExpansionChanged:(value){

                            print("couple card");

                            if(value==true){

                              partyKey.currentState.collapse();
                              truthKey.currentState.collapse();
                              neverKey.currentState.collapse();
                              // coupleKey.currentState.collapse();
                              paranoiaKey.currentState.collapse();
                              diceKey.currentState.collapse();
                              roulKey.currentState.collapse();
                              triviaKey.currentState.collapse();
                            }

                          },

                        ),
                      ),
                    ),

                    const SizedBox(
                      height: 10,
                    ),
//----------------------------------------------------------------------------------
                    //paranoia

                    InkWell(
                      onLongPress: (){

                        Get.to(const GameDetailScreen());
                      },
                      child:  Container(
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Colors.cyanAccent,
                                Colors.cyanAccent,
                                Colors.cyanAccent,
                                Colors.deepOrangeAccent,
                              ],
                            )),


                        child: ExpansionTileCard(
                          key: paranoiaKey,
                          baseColor: Colors.transparent,
                          expandedColor: Colors.transparent,
                          expandedTextColor: Colors.black,

                          title: Row(
                            children: [
                              Container(
                                  height: 100,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),

                                    image: const DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            "images/game_images/paranoia.png"

                                        )
                                    ),
                                  )

                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10,top: 10),
                                  child: SizedBox(
                                    height: 100,
                                    width: MediaQuery.of(context).size.width,

                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: const [
                                        Text("PARANOIA",style: TextStyle(fontSize: 24,
                                            color: Colors.black),),
                                        Text("Best way to get the party started.No one is safe!",
                                          style: TextStyle(fontSize: 15, color: Colors.black),),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),

                          children: [
                            const SizedBox(height: 20,),
                            InkWell(
                              highlightColor: Colors.blue.shade200,
                              onTap: (){
                                Get.to(const AddPlayersScreen());
                              },
                              child:
                              Padding(
                                padding: const EdgeInsets.only(left: 30.0),
                                child: Row(
                                  children: [
                                    Container(
                                      height:30,width: 30,
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage(
                                              "images/image1.png",
                                            )
                                        ),
                                      ),
                                      // child: Center(
                                      //   child: Icon(Icons.lock,color: Colors.white70,size: 25,),
                                      // ),
                                    ),

                                    const SizedBox(width: 10,),
                                    const Text("HOW TO PLAY?"),
                                  ],
                                ),


                              ),
                            ),
                            const Divider(),
                            InkWell(
                              highlightColor: Colors.blue.shade200,
                              onTap: (){
                                Get.to(const AddPlayersScreen());
                              },
                              child:
                              Padding(
                                padding: const EdgeInsets.only(left: 30.0),
                                child: Row(
                                  children: [
                                    Container(
                                      height:30,width: 30,
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage(
                                              "images/image1.png",
                                            )
                                        ),
                                      ),
                                      // child: Center(
                                      //   child: Icon(Icons.lock,color: Colors.white70,size: 25,),
                                      // ),
                                    ),

                                    const SizedBox(width: 10,),
                                    const Text("CLASSIC"),
                                  ],
                                ),


                              ),
                            ),
                            const Divider(),
                            InkWell(
                              highlightColor: Colors.blue.shade200,
                              onTap: (){


                              },
                              child:
                              Padding(
                                padding: const EdgeInsets.only(left: 30.0),
                                child: Row(
                                  children: [
                                    Container(
                                      height:30,width: 30,
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage(
                                              "images/image1.png",
                                            )
                                        ),
                                      ),
                                      child: const Center(
                                        child: Icon(Icons.lock,color: Colors.white70,size: 25,),
                                      ),
                                    ),

                                    const SizedBox(width: 10,),
                                    const Text("HOT N' SPICY"),
                                  ],
                                ),


                              ),
                            ),
                            const Divider(),
                            InkWell(
                              highlightColor: Colors.blue.shade200,
                              onTap: (){


                              },
                              child:
                              Padding(
                                padding: const EdgeInsets.only(left: 30.0),
                                child: Row(
                                  children: [
                                    Container(
                                      height:30,width: 30,
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage(
                                              "images/image1.png",
                                            )
                                        ),
                                      ),
                                      child: const Center(
                                        child: Icon(Icons.lock,color: Colors.white70,size: 25,),
                                      ),
                                    ),

                                    const SizedBox(width: 10,),
                                    const Text("CRAZY"),
                                  ],
                                ),


                              ),
                            ),
                            const SizedBox(height: 20,)
                          ],

                          trailing:const Text(''),

                          onExpansionChanged:(value){

                            print("parania card");

                            if(value==true){
                              partyKey.currentState.collapse();
                              truthKey.currentState.collapse();
                              neverKey.currentState.collapse();
                              coupleKey.currentState.collapse();
                              // paranoiaKey.currentState.collapse();
                              diceKey.currentState.collapse();
                              roulKey.currentState.collapse();
                              triviaKey.currentState.collapse();
                            }


                          },
                        ),
                      ),
                    ),

                    const SizedBox(
                      height: 10,
                    ),
//----------------------------------------------------------------------------------
                    //dices

                    InkWell(
                      onLongPress: (){

                        Get.to(const GameDetailScreen());
                      },
                      child:  Container(
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Colors.cyanAccent,
                                Colors.cyanAccent,
                                Colors.cyanAccent,
                                Colors.deepOrangeAccent,
                              ],
                            )),


                        child: ExpansionTileCard(
                          key: diceKey,
                          baseColor: Colors.transparent,
                          expandedColor: Colors.transparent,
                          expandedTextColor: Colors.black,

                          title: Row(
                            children: [
                              Container(
                                  height: 100,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),

                                    image: const DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            "images/game_images/dices.png"

                                        )
                                    ),
                                  )

                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10,top: 10),
                                  child: SizedBox(
                                    height: 100,
                                    width: MediaQuery.of(context).size.width,

                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: const [
                                        Text("DICES",style: TextStyle(fontSize: 24,
                                            color: Colors.black),),
                                        Text("Best way to get the party started.No one is safe!",
                                          style: TextStyle(fontSize: 15, color: Colors.black),),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),

                          children: [
                            const SizedBox(height: 20,),
                            InkWell(
                              highlightColor: Colors.blue.shade200,
                              onTap: (){
                                Get.to(const AddPlayersScreen());
                              },
                              child:
                              Padding(
                                padding: const EdgeInsets.only(left: 30.0),
                                child: Row(
                                  children: [
                                    Container(
                                      height:30,width: 30,
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage(
                                              "images/image1.png",
                                            )
                                        ),
                                      ),
                                      // child: Center(
                                      //   child: Icon(Icons.lock,color: Colors.white70,size: 25,),
                                      // ),
                                    ),

                                    const SizedBox(width: 10,),
                                    const Text("HOW TO PLAY?"),
                                  ],
                                ),


                              ),
                            ),
                            const Divider(),
                            InkWell(
                              highlightColor: Colors.blue.shade200,
                              onTap: (){
                                Get.to(const AddPlayersScreen());
                              },
                              child:
                              Padding(
                                padding: const EdgeInsets.only(left: 30.0),
                                child: Row(
                                  children: [
                                    Container(
                                      height:30,width: 30,
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage(
                                              "images/image1.png",
                                            )
                                        ),
                                      ),
                                      // child: Center(
                                      //   child: Icon(Icons.lock,color: Colors.white70,size: 25,),
                                      // ),
                                    ),

                                    const SizedBox(width: 10,),
                                    const Text("CLASSIC"),
                                  ],
                                ),


                              ),
                            ),
                            const Divider(),
                            InkWell(
                              highlightColor: Colors.blue.shade200,
                              onTap: (){


                              },
                              child:
                              Padding(
                                padding: const EdgeInsets.only(left: 30.0),
                                child: Row(
                                  children: [
                                    Container(
                                      height:30,width: 30,
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage(
                                              "images/image1.png",
                                            )
                                        ),
                                      ),
                                      child: const Center(
                                        child: Icon(Icons.lock,color: Colors.white70,size: 25,),
                                      ),
                                    ),

                                    const SizedBox(width: 10,),
                                    const Text("HOT N' SPICY"),
                                  ],
                                ),


                              ),
                            ),
                            const Divider(),
                            InkWell(
                              highlightColor: Colors.blue.shade200,
                              onTap: (){


                              },
                              child:
                              Padding(
                                padding: const EdgeInsets.only(left: 30.0),
                                child: Row(
                                  children: [
                                    Container(
                                      height:30,width: 30,
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage(
                                              "images/image1.png",
                                            )
                                        ),
                                      ),
                                      child: const Center(
                                        child: Icon(Icons.lock,color: Colors.white70,size: 25,),
                                      ),
                                    ),

                                    const SizedBox(width: 10,),
                                    const Text("CRAZY"),
                                  ],
                                ),


                              ),
                            ),
                            const SizedBox(height: 20,)
                          ],

                          trailing:const Text(''),

                          onExpansionChanged:(value){

                            print("dice card");

                            if(value==true){
                              partyKey.currentState.collapse();
                              truthKey.currentState.collapse();
                              neverKey.currentState.collapse();
                              coupleKey.currentState.collapse();
                              paranoiaKey.currentState.collapse();
                              // diceKey.currentState.collapse();
                              roulKey.currentState.collapse();
                              triviaKey.currentState.collapse();

                            }

                          },
                        ),
                      ),
                    ),

                    const SizedBox(
                      height: 10,
                    ),
//----------------------------------------------------------------------------------
                    //rouletes

                    InkWell(
                      onLongPress: (){

                        Get.to(const GameDetailScreen());
                      },
                      child:  Container(
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Colors.cyanAccent,
                                Colors.cyanAccent,
                                Colors.cyanAccent,
                                Colors.deepOrangeAccent,
                              ],
                            )),


                        child: ExpansionTileCard(
                          key: roulKey,
                          baseColor: Colors.transparent,
                          expandedColor: Colors.transparent,
                          expandedTextColor: Colors.black,

                          title: Row(
                            children: [
                              Container(
                                  height: 100,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),

                                    image: const DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            "images/game_images/roul.png"

                                        )
                                    ),
                                  )

                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10,top: 10),
                                  child: SizedBox(
                                    height: 100,
                                    width: MediaQuery.of(context).size.width,

                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: const [
                                        Text("ROULETTE",style: TextStyle(fontSize: 24,
                                            color: Colors.black),),
                                        Text("Best way to get the party started.No one is safe!",
                                          style: TextStyle(fontSize: 15, color: Colors.black),),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),

                          children: [
                            const SizedBox(height: 20,),
                            InkWell(
                              highlightColor: Colors.blue.shade200,
                              onTap: (){
                                Get.to(const AddPlayersScreen());
                              },
                              child:
                              Padding(
                                padding: const EdgeInsets.only(left: 30.0),
                                child: Row(
                                  children: [
                                    Container(
                                      height:30,width: 30,
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage(
                                              "images/image1.png",
                                            )
                                        ),
                                      ),
                                      // child: Center(
                                      //   child: Icon(Icons.lock,color: Colors.white70,size: 25,),
                                      // ),
                                    ),

                                    const SizedBox(width: 10,),
                                    const Text("HOW TO PLAY?"),
                                  ],
                                ),


                              ),
                            ),
                            const Divider(),
                            InkWell(
                              highlightColor: Colors.blue.shade200,
                              onTap: (){
                                Get.to(const AddPlayersScreen());
                              },
                              child:
                              Padding(
                                padding: const EdgeInsets.only(left: 30.0),
                                child: Row(
                                  children: [
                                    Container(
                                      height:30,width: 30,
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage(
                                              "images/image1.png",
                                            )
                                        ),
                                      ),
                                      // child: Center(
                                      //   child: Icon(Icons.lock,color: Colors.white70,size: 25,),
                                      // ),
                                    ),

                                    const SizedBox(width: 10,),
                                    const Text("CLASSIC"),
                                  ],
                                ),


                              ),
                            ),
                            const Divider(),
                            InkWell(
                              highlightColor: Colors.blue.shade200,
                              onTap: (){


                              },
                              child:
                              Padding(
                                padding: const EdgeInsets.only(left: 30.0),
                                child: Row(
                                  children: [
                                    Container(
                                      height:30,width: 30,
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage(
                                              "images/image1.png",
                                            )
                                        ),
                                      ),
                                      child: const Center(
                                        child: Icon(Icons.lock,color: Colors.white70,size: 25,),
                                      ),
                                    ),

                                    const SizedBox(width: 10,),
                                    const Text("HOT N' SPICY"),
                                  ],
                                ),


                              ),
                            ),
                            const Divider(),
                            InkWell(
                              highlightColor: Colors.blue.shade200,
                              onTap: (){


                              },
                              child:
                              Padding(
                                padding: const EdgeInsets.only(left: 30.0),
                                child: Row(
                                  children: [
                                    Container(
                                      height:30,width: 30,
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage(
                                              "images/image1.png",
                                            )
                                        ),
                                      ),
                                      child: const Center(
                                        child: Icon(Icons.lock,color: Colors.white70,size: 25,),
                                      ),
                                    ),

                                    const SizedBox(width: 10,),
                                    const Text("CRAZY"),
                                  ],
                                ),


                              ),
                            ),
                            const SizedBox(height: 20,)
                          ],

                          trailing:const Text(''),

                          onExpansionChanged:(value){

                            print("roulette card");

                            if(value==true){
                              partyKey.currentState.collapse();
                              truthKey.currentState.collapse();
                              neverKey.currentState.collapse();
                              coupleKey.currentState.collapse();
                              paranoiaKey.currentState.collapse();
                              diceKey.currentState.collapse();
                              //roulKey.currentState.collapse();
                              triviaKey.currentState.collapse();

                            }


                          },
                        ),
                      ),
                    ),

                    const SizedBox(
                      height: 10,
                    ),
//----------------------------------------------------------------------------------
                    //trivia

                    InkWell(
                      onLongPress: (){

                        Get.to(const GameDetailScreen());
                      },
                      child:  Container(
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Colors.cyanAccent,
                                Colors.cyanAccent,
                                Colors.cyanAccent,
                                Colors.deepOrangeAccent,
                              ],
                            )),


                        child: ExpansionTileCard(
                         key: triviaKey,
                          baseColor: Colors.transparent,
                          expandedColor: Colors.transparent,
                          expandedTextColor: Colors.black,

                          title: Row(
                            children: [
                              Container(
                                  height: 100,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),

                                    image: const DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            "images/game_images/trivia.png"

                                        )
                                    ),
                                  )

                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10,top: 10),
                                  child: SizedBox(
                                    height: 100,
                                    width: MediaQuery.of(context).size.width,

                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: const [
                                        Text("TRIVIA",style: TextStyle(fontSize: 24,
                                            color: Colors.black),),
                                        Text("Best way to get the party started.No one is safe!",
                                          style: TextStyle(fontSize: 15, color: Colors.black),),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),

                          children: [
                            const SizedBox(height: 20,),
                            InkWell(
                              highlightColor: Colors.blue.shade200,
                              onTap: (){
                                Get.to(const AddPlayersScreen());
                              },
                              child:
                              Padding(
                                padding: const EdgeInsets.only(left: 30.0),
                                child: Row(
                                  children: [
                                    Container(
                                      height:30,width: 30,
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage(
                                              "images/image1.png",
                                            )
                                        ),
                                      ),
                                      // child: Center(
                                      //   child: Icon(Icons.lock,color: Colors.white70,size: 25,),
                                      // ),
                                    ),

                                    const SizedBox(width: 10,),
                                    const Text("HOW TO PLAY?"),
                                  ],
                                ),


                              ),
                            ),
                            const Divider(),
                            InkWell(
                              highlightColor: Colors.blue.shade200,
                              onTap: (){
                                Get.to(const AddPlayersScreen());
                              },
                              child:
                              Padding(
                                padding: const EdgeInsets.only(left: 30.0),
                                child: Row(
                                  children: [
                                    Container(
                                      height:30,width: 30,
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage(
                                              "images/image1.png",
                                            )
                                        ),
                                      ),
                                      // child: Center(
                                      //   child: Icon(Icons.lock,color: Colors.white70,size: 25,),
                                      // ),
                                    ),

                                    const SizedBox(width: 10,),
                                    const Text("CLASSIC"),
                                  ],
                                ),


                              ),
                            ),
                            const Divider(),
                            InkWell(
                              highlightColor: Colors.blue.shade200,
                              onTap: (){


                              },
                              child:
                              Padding(
                                padding: const EdgeInsets.only(left: 30.0),
                                child: Row(
                                  children: [
                                    Container(
                                      height:30,width: 30,
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage(
                                              "images/image1.png",
                                            )
                                        ),
                                      ),
                                      child: const Center(
                                        child: Icon(Icons.lock,color: Colors.white70,size: 25,),
                                      ),
                                    ),

                                    const SizedBox(width: 10,),
                                    const Text("HOT N' SPICY"),
                                  ],
                                ),


                              ),
                            ),
                            const Divider(),
                            InkWell(
                              highlightColor: Colors.blue.shade200,
                              onTap: (){


                              },
                              child:
                              Padding(
                                padding: const EdgeInsets.only(left: 30.0),
                                child: Row(
                                  children: [
                                    Container(
                                      height:30,width: 30,
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage(
                                              "images/image1.png",
                                            )
                                        ),
                                      ),
                                      child: const Center(
                                        child: Icon(Icons.lock,color: Colors.white70,size: 25,),
                                      ),
                                    ),

                                    const SizedBox(width: 10,),
                                    const Text("CRAZY"),
                                  ],
                                ),


                              ),
                            ),
                            const SizedBox(height: 20,)
                          ],

                          trailing:const Text(''),

                          onExpansionChanged:(value){

                            print("trivia card");

                            if(value==true){

                              partyKey.currentState.collapse();
                              truthKey.currentState.collapse();
                              neverKey.currentState.collapse();
                              coupleKey.currentState.collapse();
                              paranoiaKey.currentState.collapse();
                              diceKey.currentState.collapse();
                              roulKey.currentState.collapse();
                              //triviaKey.currentState.collapse();
                            }


                          },
                        ),
                      ),
                    ),




                  ]
                  ),
                ),

          ),
        ));
  }

}
