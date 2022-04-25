import 'package:dirbbox/app/modules/profile/views/profile_view.dart';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1F1F1),
      body: Stack(
        children: [
          Container(
            width: Get.width,
            child: Image.asset(
              "assets/images/bg.png",
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 135),
                Container(
                  width: 150,
                  height: 150,
                  child: Image.asset(
                    "assets/images/pic-1.png",
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "Welcome to",
                  style: TextStyle(
                    fontSize: 22,
                    color: Color(0xFF22215B),
                  ),
                ),
                Text(
                  "DirbBox",
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: 250,
                  child: Text(
                    "Best cloud storage platform for all bussiness and idividuals to manage their data\n\nJoin For Free",
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF22215B).withOpacity(0.6),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Get.to(ProfileView());
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.fingerprint,
                            color: Color(0xFF567DF4),
                          ),
                          SizedBox(width: 10),
                          Text(
                            "Smart Id",
                            style: TextStyle(
                              color: Color(0xFF567DF4),
                            ),
                          )
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFFEEF7FE),
                        fixedSize: Size(130, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Get.to(ProfileView());
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Sign In",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 10),
                          Icon(
                            Icons.east,
                            size: 20,
                          ),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF567DF4),
                        fixedSize: Size(130, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 40),
                Center(
                  child: Text(
                    "Use Social Login",
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF22215B).withOpacity(0.7),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/icons/ig.png"),
                    SizedBox(width: 30),
                    Image.asset("assets/icons/twitter.png"),
                    SizedBox(width: 30),
                    Image.asset("assets/icons/fb.png"),
                  ],
                ),
                SizedBox(height: 40),
                Center(
                  child: Text(
                    "Create an account",
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF22215B).withOpacity(0.7),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
