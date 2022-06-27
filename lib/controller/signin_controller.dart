import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/animation.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

  class SigninController extends GetxController {
    GoogleSignIn googleSignIn = GoogleSignIn();
    FirebaseAuth firebaseAuth = FirebaseAuth.instance;
    Map userData;
    User user;

   signInWithGoogle() async {

     GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
     if (googleSignInAccount == null)  return null;

      GoogleSignInAuthentication googleSignInAuthentication =
      await googleSignInAccount.authentication;
      AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );
    UserCredential userCredential= await firebaseAuth.signInWithCredential(credential);
    user=userCredential.user;
    print("Login With google data is :\n $user");
  }

   signInWithFacebook() async {
      LoginResult loginResult = await FacebookAuth.instance.login();
      AuthCredential facebookAuthCredential = FacebookAuthProvider
          .credential(loginResult.accessToken.token);
      final requestData= await FacebookAuth.instance.getUserData();
     await FirebaseAuth.instance.signInWithCredential(facebookAuthCredential);
      print("Login With facebook data is :\n $requestData");
    }


  logout() async {
    await googleSignIn.disconnect();
    await FacebookAuth.instance.logOut();
    FirebaseAuth.instance.signOut();
  }
  }