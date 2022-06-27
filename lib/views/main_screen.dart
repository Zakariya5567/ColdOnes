import 'dart:developer';

import 'package:cold_ones/controller/game_controller.dart';
import 'package:cold_ones/views/authentications/login_page.dart';
import 'package:cold_ones/views/authentications/sing_in_options.dart';
import 'package:cold_ones/views/friends_page/navigation.dart';
import 'package:cold_ones/views/game/game_list_screen.dart';
import 'package:cold_ones/views/settings/setting_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

import '../controller/dialog_box_controller.dart';
import 'cocktailPage/coctailHome.dart';

class Main_Screen extends StatefulWidget {
  const Main_Screen({Key key}) : super(key: key);

  @override
  State<Main_Screen> createState() => _Main_ScreenState();
}

class _Main_ScreenState extends State<Main_Screen> {
  dialogcontroller controller = Get.put(dialogcontroller());
  double height;
  double width;

  GameController gameController=Get.put(GameController());

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          //  width: width * 0.26,

          decoration: BoxDecoration(
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
              Container(
                height: 320,
                child: Image.asset('images/coldones.png'),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: Column(
                  children: [

//--------------------------------------------------------------------------------------
// Games button


                    Material(
                      color: Colors.blue[300],
                      borderRadius: BorderRadius.circular(10),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(10),
                        highlightColor: Colors.blue.shade700,

                        onTap: () {
                          //controller.loginfirst();
                          Get.to(GameListScreen());

                          // Get.to(Sing_InOption(),);
                        },
                        child: SizedBox(
                          height: 140,

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:const [
                              Text(
                                "GAMES",
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                   const  SizedBox(
                      height: 15,
                    ),

//--------------------------------------------------------------------------------------
// Friends button

                    Material(
                      color: Colors.blue[300],
                      borderRadius: BorderRadius.circular(10),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(10),

                        highlightColor: Colors.blue.shade700,

                        onTap: () {
                          Get.to(Navigatiobar());
                        },
                        child: SizedBox(
                          height: 50,
                          //  width: 330
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                "FRIENDS",
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  const   SizedBox(
                      height: 15,
                    ),



    //-------------------------------------------------------------------------------------
    //cocktails button

                    Material(
                      color: Colors.blue[300],
                      borderRadius: BorderRadius.circular(10),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(10),

                          highlightColor: Colors.blue.shade700,
                          

                          onTap: (){
                            Get.to(CocktailsHome());
                          },
                          child: SizedBox(
                            height: 50,

                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:const [
                                Text(
                                  "COCKTAILS",
                                  style: TextStyle(
                                      fontSize: 30, fontWeight: FontWeight.w400),
                                )
                              ],
                            ),
                          )
                      ),
                    )
                   ,
                   const  SizedBox(
                      height: 15,
                    ),



                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                            onPressed: () {
                              GameController c=Get.find();
                              Map data={"ahad":"Ali"};
                              c.setAttemp(data);
                            //  Get.to(Setting());
                            },
                            icon: Icon(
                              Icons.settings,
                              size: 30,
                              color: Colors.blue,
                            ))
                      ],
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
