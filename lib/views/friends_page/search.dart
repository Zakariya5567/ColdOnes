import 'package:cold_ones/views/friends_page/profile_firend.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class Search extends StatefulWidget {
  Search({Key key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: SafeArea(
     
            child:
              SingleChildScrollView(
                physics:const  NeverScrollableScrollPhysics(),
                child: Container(
                  height: MediaQuery.of(context).size.height,
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
                      child: Column(
                children: [
                   Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton.icon(
                            onPressed: () {Get.back();},
                            icon: const Icon(
                              Icons.arrow_back_ios,
                              color: Colors.black,
                              size: 30,
                            ),
                            label: const Text(
                              'FRIENDS',
                              style:  TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            )),
                      ],
                    ),
                  ),
                  const Text(
                    'SEARCH',
                    style: TextStyle(
                    fontSize: 44,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(14)),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              decoration: const InputDecoration(border: InputBorder.none),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Container(

                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          gradient:const LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Colors.pink,
                              Colors.yellow,
                            ],
                          )),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 10,
                          ),

                          //-------------------------------------------------------------------
                          // konradin

                          Material(
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: (){
                                Get.to(ProfileNiels());
                              },
                              highlightColor: Colors.blue,
                              child:
                              Row(
                                children: [
                                  const  SizedBox(
                                    width: 5,
                                  ),
                                  Image.asset('images/bottle-with-pop.png'),
                                  const  SizedBox(
                                    width: 10,
                                  ),
                                  const  Text(
                                    'Konradin',
                                    style: TextStyle(
                                        fontSize: 22,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const  SizedBox(
                                    width: 10,
                                  )
                                ],
                              ),
                            ),
                          ),
                          const Divider(
                            thickness: 2,
                          ),

                         //-------------------------------------------------------------------
                         // Neils button

                          Material(
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: (){
                                Get.to(ProfileNiels());
                              },
                              highlightColor: Colors.blue,
                              child:
                              Row(
                                children: [
                                  const  SizedBox(
                                    width: 5,
                                  ),
                                  Image.asset('images/😘.png'),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const  Text(
                                    'Niels',
                                    style: TextStyle(
                                        fontSize: 22,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const  SizedBox(
                                    width: 10,
                                  )
                                ],
                              ),
                            ),
                          ),
                          const  Divider(
                            thickness: 2,
                          ),

                          //-------------------------------------------------------------------
                          // Nicklas

                          Material(
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: (){
                                Get.to(ProfileNiels());
                              },
                              highlightColor: Colors.blue,
                              child:
                              Row(
                                children: [
                                  const  SizedBox(
                                    width: 5,
                                  ),
                                  Image.asset('images/🐀.png'),
                                  const  SizedBox(
                                    width: 10,
                                  ),
                                  const   Text(
                                    'Nicklas',
                                    style: TextStyle(
                                        fontSize: 22,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const    SizedBox(
                                    width: 10,
                                  )
                                ],
                              ),
                            ),
                          ),
                          const  Divider(
                            thickness: 2,
                          ),

                          //-------------------------------------------------------------------
                          // daria

                          Material(
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: (){
                                Get.to(ProfileNiels());
                              },
                              highlightColor: Colors.blue,
                              child: Row(
                                children: [
                                  const     SizedBox(
                                    width: 5,
                                  ),
                                  Image.asset('images/bottle-with-pop.png'),
                                  const  SizedBox(
                                    width: 10,
                                  ),
                                  const     Text(
                                    'Daria',
                                    style: TextStyle(
                                        fontSize: 22,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          ),
                          const  Divider(
                            thickness: 2,
                          ),

                          //-------------------------------------------------------------------
                          // Max

                          Material(
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: (){
                                Get.to(ProfileNiels());
                              },
                              highlightColor: Colors.blue,
                              child: Row(
                                children: [
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Image.asset('images/bottle-with-pop.png'),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Text(
                                    'Max',
                                    style:TextStyle(
                                        fontSize: 22,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          ),
                          const Divider(
                            thickness: 2,
                          ),

                          //-------------------------------------------------------------------
                          // Max

                          Material(
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: (){
                                Get.to(ProfileNiels());
                              },
                              highlightColor: Colors.blue,
                              child: Row(
                                children: [
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Image.asset('images/bottle-with-pop.png'),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Text(
                                    'Max',
                                    style:  TextStyle(
                                        fontSize: 22,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
                      ),
                    ),
              ),

          
          ),
    );
  }
}

