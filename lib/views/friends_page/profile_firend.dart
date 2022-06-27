import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../controller/dialog_box_controller.dart';

class ProfileNiels extends StatefulWidget {
  ProfileNiels({Key key}) : super(key: key);

  @override
  State<ProfileNiels> createState() => _ProfileNielsState();
}

class _ProfileNielsState extends State<ProfileNiels> {

  dialogcontroller controller = Get.put(dialogcontroller());

  GoogleMapController googleMapController;

  static const CameraPosition initialCameraPosition = CameraPosition(target: LatLng(37.42796133580664, -122.085749655962), zoom: 14);

  Set<Marker> markers = {};

  @override
  void initState(){
    // TODO: implement initState
    super.initState();
    position();


    setState(() {});

  }
  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();

    if (!serviceEnabled) {
      return Future.error('Location services are disabled');
    }

    permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();

      if (permission == LocationPermission.denied) {
        return Future.error("Location permission denied");
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error('Location permissions are permanently denied');
    }

    Position position = await Geolocator.getCurrentPosition();

    return position;
  }

  Future<Position>position()async{
    Position position = await _determinePosition();
    googleMapController
        .animateCamera(CameraUpdate.newCameraPosition(CameraPosition(target: LatLng(position.latitude, position.longitude), zoom: 14)));

     setState(() {
       markers.clear();
     });


    markers.add(Marker(markerId: const MarkerId('currentLocation'),position: LatLng(position.latitude, position.longitude)));

    return position;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              physics: NeverScrollableScrollPhysics(),
              child: Container(
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
                            'FRIENDS',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          )),
                      IconButton(
                          onPressed: () {
                            controller.share();
                          },
                          icon: const Icon(
                            Icons.file_upload_outlined,
                            size: 40,
                          ))
                    ],
                  ),
                ),
                const Text(
                  'NIELS',
                  style:  TextStyle(
                  fontSize: 44,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 180,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: GoogleMap(

                      initialCameraPosition: initialCameraPosition,
                      markers: markers,
                      zoomControlsEnabled: false,
                      mapType: MapType.normal,
                      onMapCreated: (GoogleMapController controller) {
                        googleMapController = controller;
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(14.0),
                  child:
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(14)),
                    child: Column(children: [
                      const SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          SizedBox(
                            width: 5,
                          ),
                          Text('Message: HOLD on, i\'m on my way!'),
                          Spacer(),
                          Text('09:40', style: TextStyle(color: Colors.grey)),
                          SizedBox(
                            width: 5,
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                    ]),
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 14, right: 14, top: 14),
                      child: Row(
                        children: [
                          Expanded(
                              child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(14)),
                            child: Row(
                              children: const [
                                SizedBox(
                                  width: 10,
                                ),
                                Text('CHEERS!'),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.thumb_up_sharp,
                                  color: Colors.orange,
                                ),
                              ],
                            ),
                          )),
                          const SizedBox(
                            width: 20,
                          ),
                          Expanded(
                              child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(14)),
                            child: Row(
                              children: const [
                                SizedBox(
                                  width: 10,
                                ),
                                Text('CAN I COME!'),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.thumbs_up_down_outlined,
                                  color: Colors.orange,
                                ),
                              ],
                            ),
                          ))
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 14, right: 14, top: 14),
                      child: Row(
                        children: [
                          Expanded(
                              child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(14)),
                            child: Row(
                              children: const [
                                SizedBox(
                                  width: 10,
                                ),
                                Text('HOLD ON, I\'M ON MY\n WAY!'),
                                SizedBox(
                                  width: 10,
                                ),
                              ],
                            ),
                          )),
                          const SizedBox(
                            width: 20,
                          ),
                          Expanded(
                              child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(14)),
                            child: Row(
                              children: const [
                                SizedBox(
                                  width: 10,
                                ),
                                Text('COME OVER!'),
                                SizedBox(
                                  width: 10,
                                ),
                              ],
                            ),
                          ))
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Row(
                        children: [
                          Expanded(
                              child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(14)),
                            child: Row(
                              children: const [
                                SizedBox(
                                  width: 70,
                                ),
                                Icon(
                                  Icons.thumb_up_sharp,
                                  color: Colors.orange,
                                ),
                              ],
                            ),
                          )),
                          const SizedBox(
                            width: 20,
                          ),
                          Expanded(
                              child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(14)),
                            child: Row(
                              children: const [
                                SizedBox(
                                  width: 70,
                                ),
                                Icon(
                                  Icons.thumb_down,
                                  color: Colors.orange,
                                ),
                              ],
                            ),
                          ))
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 14, right: 14, top: 0),
                      child: Row(
                        children: [
                          Expanded(
                              child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(14)),
                            child: Row(
                              children: const [
                                SizedBox(
                                  width: 10,
                                ),
                                Text('LETS GRAB A DRINK\n LATER!'),
                                SizedBox(
                                  width: 10,
                                ),
                              ],
                            ),
                          )),
                          const SizedBox(
                            width: 20,
                          ),
                          Expanded(
                              child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(14)),
                            child: Row(
                              children: const [
                                SizedBox(
                                  width: 8,
                                ),
                                Icon(
                                  Icons.edit,
                                  color: Colors.orange,
                                ),
                                Text('CREATE MESSAFE'),
                                SizedBox(
                                  width: 8,
                                ),
                              ],
                            ),
                          ))
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.white,
                            ),
                            height: 65,
                            child: Image.asset('images/QR Code.png'),
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 40,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'USERNAME:',
                            style: TextStyle(
                                color: Colors.black, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Niels Steinhof',
                            style: TextStyle(
                                color: Colors.black, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'FRIENDS SINCE:',
                            style: TextStyle(
                                color: Colors.black, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '05.02.21',
                            style: TextStyle(
                                color: Colors.black, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
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