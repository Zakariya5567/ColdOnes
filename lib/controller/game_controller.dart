import 'package:get/get.dart';

class GameController extends GetxController{

  List attempt=[];

  setAttemp(name){
    attempt.add(name);

    print("list is :$attempt");
  //  attempt.clear();
  }
}