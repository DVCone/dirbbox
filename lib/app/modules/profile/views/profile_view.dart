import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1F1F1),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFFF1F1F1),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios,
            color: Color(0xFF22215B),
          ),
        ),
        centerTitle: true,
        title: Text(
          'My Profile',
          style: TextStyle(
            color: Color(0xFF22215B),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_horiz,
              color: Color(0xFF22215B),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 25),
            padding: EdgeInsets.all(25),
            height: 275,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Stack(
              children: [
                Column(
                  children: [
                    Container(
                      width: 75,
                      height: 75,
                      child: Image.asset(
                        "assets/images/profile.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      "Hakim Madani",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Flutter UI Developer",
                      style: TextStyle(
                        color: Color(0xFF22215B),
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "lorem ipsum dolor sit amet, consectur adipiscing elit, Ornare pretium pacerat ut platea.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF22215B).withOpacity(0.6),
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    width: 60,
                    height: 30,
                    decoration: BoxDecoration(
                        color: Color(0xFFFF317B),
                        borderRadius: BorderRadius.circular(7)),
                    child: Center(
                      child: Text(
                        "PRO",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
