import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddPlayersScreen extends StatelessWidget {
  const AddPlayersScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:
        AppBar(
          automaticallyImplyLeading: false,
          elevation: 0,
             title:Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 IconButton(
                   icon:const Icon( Icons.arrow_back_ios_sharp,color: Colors.black,),
                   onPressed: (){
                     Get.back();
                   },
                 ),
                 const Text(
                   "GAMES",
                   style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400),
                 ),
                 Expanded(child: Container(width: 0,)),
                 const Text(
                   "PLAY",
                   style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400),
                 ),
                 IconButton(
                   icon:const Icon( Icons.arrow_forward_ios_outlined,color: Colors.black,),
                   onPressed: (){},
                 ),

               ],
             ),

          backgroundColor: Colors.blue,
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.blue,
                  Colors.blue,
                  Colors.purpleAccent,
                  Colors.purpleAccent,
                ],
              )),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(children: [
                const Text(
                  "ADD PLAYERS",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 38.0,
                  ),
                ),

                const SizedBox(
                  height: 20,
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    //height: 400,

                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Colors.cyanAccent,
                            Colors.cyanAccent,
                            //Colors.purpleAccent[100],
                            Colors.purpleAccent[100],
                          ],
                        )
                    ),
                    child:

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          ListTile(
                            title:
                            Text(
                              "MARIE",style: TextStyle(fontFamily:"Arial",fontSize: 18,color: Colors.black),
                            ),
                          ),
                          Divider(),
                          ListTile(
                            title: Text(
                              "ALEXANDER",style: TextStyle(fontFamily:"Arial",fontSize: 18,color: Colors.black),
                            ),
                          ),
                          Divider(),

                          ListTile(
                            //tileColor: Colors.red,
                            title:
                            TextField(

                              decoration: InputDecoration(
                                hintText: '+ Add',
                                hintStyle: TextStyle(color: Colors.black),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.transparent)
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.transparent)
                                ),
                                //contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                              ),
                            )
                          ),


                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),




              ]
              ),
            ),
          ),
        ));
  }
}
