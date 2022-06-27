import 'package:cold_ones/views/friends_page/profile_firend.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'add_friend_req.dart';

class Friends extends StatefulWidget {
  Friends({Key key}) : super(key: key);

  @override
  State<Friends> createState() => _FriendsState();
}

class _FriendsState extends State<Friends> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
     
            child: SingleChildScrollView(
              child: Container(
                   height: 1000,
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
                            'HOME',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          )),
                      IconButton(
                          onPressed: () {
                          Get.to(const AddFriends());
                          },
                          icon: const Icon(
                            Icons.person_add,
                            size: 40,
                          ))
                    ],
                  ),
                ),
                Container(
                    child: const Text(
                  'FRIENDS',
                  style: TextStyle(
                      fontSize: 44,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                )),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(14)),
                  child: Image.asset('images/IMG_34C351C69B5.png'),
                ),
                Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomLeft,
                          colors: [
                            Colors.white,
                            Colors.orange,
                          ],
                        ),
                        borderRadius: BorderRadius.circular(14)),
                    child: Column(children: [
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Icon(
                            Icons.settings,
                            color: Colors.black,
                            size: 30,
                          ),
                          SizedBox(width: 10),
                        ],
                      )
                    ]),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        gradient: const LinearGradient(
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
                        GestureDetector(
                          onTap: (){
                            Get.to(ProfileNiels());
                          },
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
                                'Konradin',
                                style: TextStyle(
                                    fontSize: 22,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              const Spacer(),
                              const Text('2197 km'),
                              const SizedBox(
                                width: 10,
                              )
                            ],
                          ),
                        ),
                        const Divider(
                          thickness: 2,
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 5,
                            ),
                            Image.asset('images/😘.png'),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              'Niels',
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            const Spacer(),
                            const Text('13 km'),
                            const SizedBox(
                              width: 10,
                            )
                          ],
                        ),
                        const Divider(
                          thickness: 2,
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 5,
                            ),
                            Image.asset('images/🐀.png'),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              'Nicklas',
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            const Spacer(),
                            const Text('420 km'),
                            const SizedBox(
                              width: 10,
                            )
                          ],
                        ),
                        const Divider(
                          thickness: 2,
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 5,
                            ),
                            Image.asset('images/bottle-with-pop.png'),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              'Daria',
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        const Divider(
                          thickness: 2,
                        ),
                        Row(
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
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        const Divider(
                          thickness: 2,
                        ),
                        Row(
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
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
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

