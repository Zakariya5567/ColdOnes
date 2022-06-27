import 'dart:ffi';

import 'package:cold_ones/views/cocktailPage/searchScreen.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CocktailsHome extends StatefulWidget {
  const CocktailsHome({Key key}) : super(key: key);

  @override
  State<CocktailsHome> createState() => _CocktailsHomeState();
}

class _CocktailsHomeState extends State<CocktailsHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 30,
          ),
          onPressed: () {
            Get.back();
          },
        ),
        title: const Text(
          "Home",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              icon: const Icon(
                Icons.search,
                color: Colors.black,
                size: 35,
              ),
              onPressed: () {
                Get.to(SearchCocktail());
              },
            ),
          ),
        ],
        backgroundColor: const Color.fromARGB(255, 39, 186, 219),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color.fromARGB(255, 39, 186, 219),
              Color.fromARGB(255, 39, 186, 219),
              Color.fromARGB(255, 224, 31, 18),
              Color.fromARGB(255, 224, 31, 18),
            ],
          )),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                children: [
                  //cocktails text
                  const Text(
                    "COCKTAILS",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 46.0,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),

                  Container(
                      height: MediaQuery.of(context).size.height * 0.75,
                      width: MediaQuery.of(context).size.width * 0.90,
                      color: Colors.transparent,
                      child: ListView(
                        children: [
                          Stack(
                            children: [
                              // Cosmopilitan
                              Row(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        height: 70,
                                        width: 70,
                                        decoration: const BoxDecoration(
                                          image: DecorationImage(
                                            image: ExactAssetImage(
                                                'images/coctail_images/1cosmopolitan.png'),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Container(
                                        height: 40,
                                        decoration: const BoxDecoration(
                                          border: Border(
                                            bottom: BorderSide(
                                                width: 1.0,
                                                color: Color.fromARGB(
                                                    221, 45, 43, 43)),
                                          ),
                                        ),
                                        child: const Text(
                                          "COSMOPILITAN",
                                          style: TextStyle(
                                            fontSize: 24,
                                            fontWeight: FontWeight.w400,
                                            color:
                                                Color.fromARGB(255, 10, 18, 34),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              // Manhattan

                              Padding(
                                padding: const EdgeInsets.only(top: 70),
                                child: Row(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          height: 70,
                                          width: 70,
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                              image: ExactAssetImage(
                                                  'images/coctail_images/2MANHATTAN.png'),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 20,
                                        ),
                                        Container(
                                          height: 40,
                                          decoration: const BoxDecoration(
                                            border: Border(
                                              bottom: BorderSide(
                                                  width: 1.0,
                                                  color: Color.fromARGB(
                                                      221, 45, 43, 43)),
                                            ),
                                          ),
                                          child: const Text(
                                            "MANHATTAN",
                                            style: TextStyle(
                                              fontSize: 24,
                                              fontWeight: FontWeight.w400,
                                              color: Color.fromARGB(
                                                  255, 10, 18, 34),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),

                              //  3
                              Padding(
                                padding: const EdgeInsets.only(top: 140),
                                child: Row(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          height: 70,
                                          width: 70,
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                              image: ExactAssetImage(
                                                  'images/coctail_images/3CAIPRINHA.png'),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 20,
                                        ),
                                        Container(
                                          height: 40,
                                          decoration: const BoxDecoration(
                                            border: Border(
                                              bottom: BorderSide(
                                                  width: 1.0,
                                                  color: Color.fromARGB(
                                                      221, 45, 43, 43)),
                                            ),
                                          ),
                                          child: const Text(
                                            "CAIPRINHA",
                                            style: TextStyle(
                                              fontSize: 24,
                                              fontWeight: FontWeight.w400,
                                              color: Color.fromARGB(
                                                  255, 10, 18, 34),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              // 4
                              Padding(
                                padding: const EdgeInsets.only(top: 210),
                                child: Row(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          height: 70,
                                          width: 70,
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                              image: ExactAssetImage(
                                                  'images/coctail_images/4FUN ON THE BEECH.png'),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 20,
                                        ),
                                        Container(
                                          height: 40,
                                          decoration: const BoxDecoration(
                                            border: Border(
                                              bottom: BorderSide(
                                                  width: 1.0,
                                                  color: Color.fromARGB(
                                                      221, 45, 43, 43)),
                                            ),
                                          ),
                                          child: const Text(
                                            "FUN ON THE BEECH",
                                            style: TextStyle(
                                              fontSize: 24,
                                              fontWeight: FontWeight.w400,
                                              color: Color.fromARGB(
                                                  255, 10, 18, 34),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              //5
                              Padding(
                                padding: const EdgeInsets.only(top: 280),
                                child: Row(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          height: 70,
                                          width: 70,
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                              image: ExactAssetImage(
                                                  'images/coctail_images/6ZOMBIE.png'),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 20,
                                        ),
                                        Container(
                                          height: 40,
                                          decoration: const BoxDecoration(
                                            border: Border(
                                              bottom: BorderSide(
                                                  width: 1.0,
                                                  color: Color.fromARGB(
                                                      221, 45, 43, 43)),
                                            ),
                                          ),
                                          child: const Text(
                                            "ZOMBIE",
                                            style: TextStyle(
                                              fontSize: 24,
                                              fontWeight: FontWeight.w400,
                                              color: Color.fromARGB(
                                                  255, 10, 18, 34),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              //6
                              Padding(
                                padding: const EdgeInsets.only(top: 360),
                                child: Row(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          height: 70,
                                          width: 70,
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                              image: ExactAssetImage(
                                                  'images/coctail_images/7VODKA_ENERGY.png'),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 20,
                                        ),
                                        Container(
                                          height: 40,
                                          decoration: const BoxDecoration(
                                            border: Border(
                                              bottom: BorderSide(
                                                  width: 1.0,
                                                  color: Color.fromARGB(
                                                      221, 45, 43, 43)),
                                            ),
                                          ),
                                          child: const Text(
                                            "7VODKA_ENERGY",
                                            style: TextStyle(
                                              fontSize: 24,
                                              fontWeight: FontWeight.w400,
                                              color: Color.fromARGB(
                                                  255, 10, 18, 34),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              //7
                              Padding(
                                padding: const EdgeInsets.only(top: 440),
                                child: Row(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          height: 70,
                                          width: 70,
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                              image: ExactAssetImage(
                                                  'images/coctail_images/8MOJITO.png'),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 20,
                                        ),
                                        Container(
                                          height: 40,
                                          decoration: const BoxDecoration(
                                            border: Border(
                                              bottom: BorderSide(
                                                  width: 1.0,
                                                  color: Color.fromARGB(
                                                      221, 45, 43, 43)),
                                            ),
                                          ),
                                          child: const Text(
                                            "MOJITO",
                                            style: TextStyle(
                                              fontSize: 24,
                                              fontWeight: FontWeight.w400,
                                              color: Color.fromARGB(
                                                  255, 10, 18, 34),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              //8
                              Padding(
                                padding: const EdgeInsets.only(top: 510),
                                child: Row(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          height: 70,
                                          width: 70,
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                              image: ExactAssetImage(
                                                  'images/coctail_images/9RAINBOW.png'),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 20,
                                        ),
                                        Container(
                                          height: 40,
                                          decoration: const BoxDecoration(
                                            border: Border(
                                              bottom: BorderSide(
                                                  width: 1.0,
                                                  color: Color.fromARGB(
                                                      221, 45, 43, 43)),
                                            ),
                                          ),
                                          child: const Text(
                                            "RAINBOW",
                                            style: TextStyle(
                                              fontSize: 24,
                                              fontWeight: FontWeight.w400,
                                              color: Color.fromARGB(
                                                  255, 10, 18, 34),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              //8
                            ],
                          ),
                        ],
                      ))
                ],
              ),

              // ListView.builder(
              //     itemCount: 30,
              //     // ignore: missing_return
              //     itemBuilder: ((context, index) {
              //       return Row();
              //     })
              //     // ExpansionTileCard(
              //     //   title: Row(
              //     //     children: [
              //     //       Container(
              //     //         height: 100,
              //     //         width: 80,
              //     //         color: Colors.red,
              //     //       ),
              //     //       Padding(
              //     //         padding: const EdgeInsets.only(left: 10),
              //     //         child: Container(
              //     //           height: 100,
              //     //           width: 170,
              //     //           color: Colors.orangeAccent,
              //     //           child: Column(
              //     //             mainAxisAlignment: MainAxisAlignment.start,
              //     //             crossAxisAlignment: CrossAxisAlignment.start,
              //     //             children: [
              //     //               Text(
              //     //                 "adsjfadhsfj",
              //     //                 style: TextStyle(fontSize: 24),
              //     //               ),
              //     //               Text(
              //     //                   "kasdjk asdf kadf ajdf  ladjf ladf ajdsfhs adsfhj"),
              //     //             ],
              //     //           ),
              //     //         ),
              //     //       ),
              //     //     ],
              //     //   ),
              //     //   children: [
              //     //     ListTile(
              //     //       leading: Icon(Icons.ac_unit),
              //     //       title: Text("dsajfkhaf"),
              //     //       onTap: () {},
              //     //     ),
              //     //     ListTile(
              //     //       leading: Icon(Icons.ac_unit),
              //     //       title: Text("dsajfkhaf"),
              //     //       onTap: () {},
              //     //     ),
              //     //     ListTile(
              //     //       leading: Icon(Icons.ac_unit),
              //     //       title: Text("dsajfkhaf"),
              //     //       onTap: () {},
              //     //     )
              //     //   ],
              //     // ),

              //     )
            ),
          ),
        ),
      ),
    );
  }
}
