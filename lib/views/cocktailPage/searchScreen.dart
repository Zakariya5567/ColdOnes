import 'package:cold_ones/views/friends_page/profile_firend.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchCocktail extends StatefulWidget {
  const SearchCocktail({Key key}) : super(key: key);

  @override
  State<SearchCocktail> createState() => _SearchCocktailState();
}

class _SearchCocktailState extends State<SearchCocktail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
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
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton.icon(
                        onPressed: () {
                          Get.back();
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios,
                          color: Colors.black,
                          size: 30,
                        ),
                        label: const Text(
                          'Back',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        )),
                  ],
                ),
              ),
              Container(
                  child: const Text(
                'COCKTAILS',
                style: TextStyle(
                    fontSize: 34,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              )),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14)),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          decoration:
                              const InputDecoration(border: InputBorder.none),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              // Padding(
              //   padding: const EdgeInsets.all(14.0),
              //   child: Container(
              //     decoration: BoxDecoration(
              //         borderRadius: BorderRadius.circular(14),
              //         gradient: LinearGradient(
              //           begin: Alignment.topRight,
              //           end: Alignment.bottomLeft,
              //           colors: [
              //             Colors.pink,
              //             Colors.yellow,
              //           ],
              //         )),
              //     child: Column(
              //       children: [
              //         SizedBox(
              //           height: 10,
              //         ),
              //         GestureDetector(
              //           onTap: () {
              //             Get.to(ProfileNiels());
              //           },
              //           child: Row(
              //             children: [
              //               SizedBox(
              //                 width: 5,
              //               ),
              //               Image.asset('images/bottle-with-pop.png'),
              //               SizedBox(
              //                 width: 10,
              //               ),
              //               Text(
              //                 'Konradin',
              //                 style: TextStyle(
              //                     fontSize: 22,
              //                     color: Colors.black,
              //                     fontWeight: FontWeight.bold),
              //               ),
              //               SizedBox(
              //                 width: 10,
              //               )
              //             ],
              //           ),
              //         ),
              //         Divider(
              //           thickness: 2,
              //         ),
              //         Row(
              //           children: [
              //             SizedBox(
              //               width: 5,
              //             ),
              //             Image.asset('images/😘.png'),
              //             SizedBox(
              //               width: 10,
              //             ),
              //             Text(
              //               'Niels',
              //               style: TextStyle(
              //                   fontSize: 22,
              //                   color: Colors.black,
              //                   fontWeight: FontWeight.bold),
              //             ),
              //             SizedBox(
              //               width: 10,
              //             )
              //           ],
              //         ),
              //         Divider(
              //           thickness: 2,
              //         ),
              //         Row(
              //           children: [
              //             SizedBox(
              //               width: 5,
              //             ),
              //             Image.asset('images/🐀.png'),
              //             SizedBox(
              //               width: 10,
              //             ),
              //             Text(
              //               'Nicklas',
              //               style: TextStyle(
              //                   fontSize: 22,
              //                   color: Colors.black,
              //                   fontWeight: FontWeight.bold),
              //             ),
              //             SizedBox(
              //               width: 10,
              //             )
              //           ],
              //         ),
              //         Divider(
              //           thickness: 2,
              //         ),
              //         Row(
              //           children: [
              //             SizedBox(
              //               width: 5,
              //             ),
              //             Image.asset('images/bottle-with-pop.png'),
              //             SizedBox(
              //               width: 10,
              //             ),
              //             Text(
              //               'Daria',
              //               style: TextStyle(
              //                   fontSize: 22,
              //                   color: Colors.black,
              //                   fontWeight: FontWeight.bold),
              //             )
              //           ],
              //         ),
              //         Divider(
              //           thickness: 2,
              //         ),
              //         Row(
              //           children: [
              //             SizedBox(
              //               width: 5,
              //             ),
              //             Image.asset('images/bottle-with-pop.png'),
              //             SizedBox(
              //               width: 10,
              //             ),
              //             Text(
              //               'Max',
              //               style: TextStyle(
              //                   fontSize: 22,
              //                   color: Colors.black,
              //                   fontWeight: FontWeight.bold),
              //             )
              //           ],
              //         ),
              //         Divider(
              //           thickness: 2,
              //         ),
              //         Row(
              //           children: [
              //             SizedBox(
              //               width: 5,
              //             ),
              //             Image.asset('images/bottle-with-pop.png'),
              //             SizedBox(
              //               width: 10,
              //             ),
              //             Text(
              //               'Max',
              //               style: TextStyle(
              //                   fontSize: 22,
              //                   color: Colors.black,
              //                   fontWeight: FontWeight.bold),
              //             )
              //           ],
              //         ),
              //         SizedBox(
              //           height: 10,
              //         ),
              //       ],
              //     ),
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
