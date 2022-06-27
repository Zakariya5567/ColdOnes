import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Profile extends StatefulWidget {
  Profile({Key key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
       
          child: Container(
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
            child: Center(
                child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Get.back();
                        }, icon: Icon(Icons.arrow_back_ios)),
                    const Text(
                      'SETTINGS',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                const Text(
                  'PROFILE',
                  style: TextStyle(
                  fontSize: 44,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
                ),
               const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Card(
                    elevation: 5,
                    child: Column(
                      children: [
                       const  SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12)),
                            child: TextField(
                              onChanged: (value) {
                                //Do something with the user input.
                              },
                              decoration: const InputDecoration(
                                  hintText:
                                      'USERName                             Niels.Steinhof',
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 10.0, horizontal: 20.0),
                                  border: InputBorder.none),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12)),
                            child: TextField(
                              onChanged: (value) {
                                //Do something with the user input.
                              },
                              decoration:const  InputDecoration(
                                  hintText:
                                      'NICKName                              KONRADIN',
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 10.0, horizontal: 20.0),
                                  border: InputBorder.none),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12)),
                            child: TextField(
                              onChanged: (value) {
                                //Do something with the user input.
                              },
                              decoration: const InputDecoration(
                                  hintText:
                                      'Account            niels.example@email.com',
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 10.0, horizontal: 20.0),
                                  border: InputBorder.none),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12)),
                            child: TextField(
                              onChanged: (value) {
                                //Do something with the user input.
                              },
                              decoration:const InputDecoration(
                                  suffixIcon: Icon(
                                    Icons.emoji_emotions,
                                    color: Colors.orange,
                                    size: 30,
                                  ),
                                  hintText: 'Emoji',
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 10.0, horizontal: 20.0),
                                  border: InputBorder.none),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 30, right: 10, bottom: 10),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                const Text(
                                  'ACHIEVEMENTS ',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  children: [
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    Image.asset(
                                        'images/vector-pop-art-.png'),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    Image.asset(
                                        'images/jfk-35220963.png'),
                                    const   SizedBox(
                                      width: 20,
                                    ),
                                    Image.asset(
                                        'images/spy-15218366.png'),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    Image.asset(
                                        'images/emergency-rotat.png'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        const  SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 110,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14)),
                  child: Image.asset('images/QR Code.png'),
                ),
                const   SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 10),
                  child: Row(
                    children: [
                      Expanded(
                        child: MaterialButton(
                          height: 40,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(14)),
                          color: Colors.white,
                          onPressed: () {},
                          child:const Text(
                            'LOG OUT',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: MaterialButton(
                          height: 40,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(14)),
                          color: Colors.white,
                          onPressed: () {},
                          child:const Text(
                            'DELETE ACCOUNT',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.red),
                          ),
                        ),
                      ),
                     
                    ],
                  ),
                )
              ],
            )),
          ),
        
      ),
    );
  }
}

