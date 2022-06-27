import 'package:cold_ones/controller/signin_controller.dart';
import 'package:cold_ones/controller/signup_controller.dart';
import 'package:cold_ones/views/authentications/login_page.dart';
import 'package:cold_ones/views/game/add_players_screen.dart';
import 'package:cold_ones/views/game/game_list_screen.dart';
import 'package:cold_ones/views/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:get/get.dart';

class Sing_InOption extends StatefulWidget {
  const Sing_InOption({Key key}) : super(key: key);

  @override
  State<Sing_InOption> createState() => _Sing_InOptionState();
}

class _Sing_InOptionState extends State<Sing_InOption> {

 SigninController signinController=Get.put(SigninController());
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Colors.blue,
            Colors.blue,
            Color.fromARGB(255, 224, 31, 18),
            const Color.fromARGB(255, 224, 31, 18),
          ],
        )
        ),
        child: Center(
            child: SafeArea(
          child: Column(
            children: [
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: () {
                        Get.to(
                          const Main_Screen(),
                        );
                      },
                      icon: const Icon(Icons.arrow_back_ios)),
                  const Text(
                    "Home",
                    style: const TextStyle(color: Colors.black, fontSize: 17),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Container(
                      height: 280,
                      child: Image.asset(
                        'images/logo.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  //signin with apple button
                  SignInButton(
                    Buttons.Apple,
                    onPressed: () {},
                  ),
               
               //sign in with email

                SignInButtonBuilder(
                    text: 'Sign in with Email',
                    textColor: Colors.black,
                    icon: Icons.email,
                    iconColor: Colors.black,
                    onPressed: () {
                      Get.to(GameListScreen());
                    },
                    backgroundColor: Colors.yellowAccent.shade400,
                  ),
                  

               //sign in with google
                  SignInButton(
                    Buttons.Google,
                    text: "Sign in with Google",
                    onPressed: () {

                     // Get.to(AddPlayersScreen());

                      //signinController.signInWithGoogle();
                    },
                  ),

                 
                  //sign in with facebook
                  SignInButton(
                    Buttons.FacebookNew,
                    onPressed: () {
                     // signinController.signInWithFacebook();
                    },
                  )
                ],
              ),
              const SizedBox(
                height: 18,
              ),
              const Text("Dont have an account yet?"),
              TextButton(
                onPressed: () {
                  Get.to(const Login());
                },
                child: const Text(
                  "Register here",
                  style: TextStyle(color: Colors.black),
                ),
              )
            ],
          ),
        )),
      ),
    );
  }
}
