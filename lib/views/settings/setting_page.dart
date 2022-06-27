import 'package:cold_ones/controller/dialog_box_controller.dart';
import 'package:cold_ones/views/settings/Gift_redeam.dart';
import 'package:cold_ones/views/settings/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

import '../authentications/sing_in_options.dart';

class Setting extends StatefulWidget {
  const Setting({Key key}) : super(key: key);

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  dialogcontroller controller = Get.put(dialogcontroller());

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
                      },
                      icon: const Icon(Icons.arrow_back_ios)),
                  const Text(
                    'HOME',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              const Text(
                'SETTINGS',
                style: TextStyle(
                    fontSize: 44,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 15,
              ),

              //---------------------------------------------------------------------------------------------
              //language
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Material(
                  borderRadius: BorderRadius.circular(18),
                  color: Colors.white,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(18),
                    highlightColor: Colors.blue.shade300,
                    onTap: () {},
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: const [
                            SizedBox(
                              width: 20,
                            ),
                            Icon(
                              Icons.language,
                              size: 40,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'LANGUAGE',
                              style: TextStyle(
                                  fontSize: 28,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              //----------------------------------------------------------------------------------------------
              // profile

              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Material(
                  borderRadius: BorderRadius.circular(18),
                  color: Colors.white,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(18),
                    highlightColor: Colors.blue.shade300,
                    onTap: () {
                      Get.to(
                        Profile(),
                      );
                    },
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: const [
                            SizedBox(
                              width: 20,
                            ),
                            Icon(
                              Icons.person,
                              size: 40,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'PROFILE',
                              style: TextStyle(
                                  fontSize: 28,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              //-------------------------------------------------------------------------------------------------
              // share

              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Material(
                  borderRadius: BorderRadius.circular(18),
                  color: Colors.white,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(18),
                    highlightColor: Colors.blue.shade300,
                    onTap: () {
                      controller.share();
                    },
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: const [
                            SizedBox(
                              width: 20,
                            ),
                            Icon(
                              Icons.share,
                              size: 40,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'SHARE',
                              style: TextStyle(
                                  fontSize: 28,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              //-------------------------------------------------------------------------------------------------
              //contact

              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Material(
                  borderRadius: BorderRadius.circular(18),
                  color: Colors.white,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(18),
                    highlightColor: Colors.blue.shade300,
                    onTap: () {
                      controller.ContactUS();
                    },
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: const [
                            SizedBox(
                              width: 20,
                            ),
                            Icon(
                              Icons.contact_mail,
                              size: 40,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'CONTACT',
                              style: TextStyle(
                                  fontSize: 28,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              //-------------------------------------------------------------------------------------------------
              //rate

              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Material(
                  borderRadius: BorderRadius.circular(18),
                  color: Colors.white,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(18),
                    highlightColor: Colors.blue.shade300,
                    onTap: () {
                      showBottomSheet(context);
                    },
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: const [
                            SizedBox(
                              width: 20,
                            ),
                            Icon(
                              Icons.star,
                              size: 40,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'RATE',
                              style: TextStyle(
                                  fontSize: 28,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              //------------------------------------------------------------------------------------------------
              //gift code

              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Material(
                  borderRadius: BorderRadius.circular(18),
                  color: Colors.white,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(18),
                    highlightColor: Colors.blue.shade300,
                    onTap: () {
                      Get.to(const GiftRedem());
                    },
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: const [
                            SizedBox(
                              width: 20,
                            ),
                            Icon(
                              Icons.wallet_giftcard,
                              size: 40,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'GIFT CODE',
                              style: TextStyle(
                                  fontSize: 28,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              //----------------------------------------------------------------------------------------------
              //privacy and terms

              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Privacy',
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Terms',
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          )),
        ),
      ),
    );
  }

  void showBottomSheet(BuildContext context) {
    showModalBottomSheet(
        isDismissible: false,
        backgroundColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(22),
        ),
        context: context,
        builder: (context) {
          return SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.only(bottom: 350, left: 16, right: 16),
              child: Container(
                padding: const EdgeInsets.all(12),
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  color: Colors.blueAccent,
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    const Text(
                      'Enjoying Cold Ones?',
                      style: const TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Consider giving us a review!',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    const SizedBox(height: 16),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 50, right: 50, top: 10),
                            child: Row(
                              children: [
                                Expanded(
                                  child: RatingBar.builder(
                                    initialRating: 3,
                                    minRating: 1,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemCount: 5,
                                    itemPadding: const EdgeInsets.symmetric(
                                        horizontal: 4.0),
                                    itemBuilder: (context, _) => const Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                    },
                                  ),
                                  //  RatingBar.builder(
                                  //   initialRating: 3,
                                  //   minRating: 1,
                                  //   direction: Axis.horizontal,
                                  //   allowHalfRating: true,
                                  //   itemCount: 5,
                                  //   itemPadding:

                                  //       EdgeInsets.symmetric(horizontal: 4.0),
                                  //   itemBuilder: (context, _) => Icon(
                                  //     Icons.star,
                                  //     color: Colors.blue,
                                  //   ),
                                  //   onRatingUpdate: (rating) {
                                  //     print(rating);
                                  //   },
                                  // ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text(
                                  'Not now',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text(
                                  'Lets do it!',
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                              )
                            ],
                          )
                        ]),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
