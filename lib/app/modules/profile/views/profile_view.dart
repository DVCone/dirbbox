import 'package:dirbbox/app/modules/login/views/login_view.dart';
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
          onPressed: () {
            Get.to(LoginView());
          },
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
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 25),
        children: [
          Container(
            padding: EdgeInsets.all(25),
            height: 270,
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
                        color: Color(0xFF22215B).withOpacity(0.8),
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
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "My Folders",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.add,
                      size: 20,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.tune_rounded,
                      size: 20,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      size: 20,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CardFolder(
                image: Image.asset("assets/icons/folder-415EB6.png"),
                title: "Mobile App",
                date: "December 20, 2020",
                color: Color(0xFF415EB6),
              ),
              CardFolder(
                image: Image.asset("assets/icons/folder-FFB110.png"),
                title: "SVG Icon",
                date: "December 14, 2020",
                color: Color(0xFFFFB110),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CardFolder(
                image: Image.asset("assets/icons/folder-AC4040.png"),
                title: "Prototype",
                date: "November 22, 2020",
                color: Color(0xFFAC4040),
              ),
              CardFolder(
                image: Image.asset("assets/icons/folder-23B0B0.png"),
                title: "Avatars",
                date: "November 10, 2020",
                color: Color(0xFF23B0B0),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Recent Uploads",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.filter_alt),
              ),
            ],
          ),
          SizedBox(height: 10),
          ListTile(
            leading: Container(
              width: 50,
              height: 50,
              child: Image.asset(
                "assets/icons/word.png",
                fit: BoxFit.cover,
              ),
            ),
            title: Text("Project.docx"),
            subtitle: Text("November 20, 2020"),
            trailing: Text("300kb"),
          )
        ],
      ),
    );
  }
}

class CardFolder extends StatelessWidget {
  const CardFolder({
    Key? key,
    required this.title,
    required this.date,
    required this.color,
    required this.image,
  }) : super(key: key);

  final String? title;
  final String? date;
  final Color? color;
  final Image? image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      width: Get.width * 0.4,
      height: 120,
      decoration: BoxDecoration(
        color: color!.withOpacity(0.2),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              image!,
              SizedBox(height: 10),
              Text(
                title!,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: color!.withOpacity(0.8),
                ),
              ),
              SizedBox(height: 5),
              Text(
                date!,
                style: TextStyle(
                  fontSize: 12,
                  color: color!.withOpacity(0.6),
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.topRight,
            child: Icon(Icons.more_vert),
          )
        ],
      ),
    );
  }
}
