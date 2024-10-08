import 'package:flutter/material.dart';
import 'package:instagram_series/Widgets/uihelper.dart';

class YouScreen extends StatelessWidget {
  const YouScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
                children: [
          Container(
            height: 48,
            width: double.infinity,
          
            child: Padding(
              padding: const EdgeInsets.only(top: 15, left: 20),
              child: Text(
                "Follow Requests",
                style: TextStyle(fontSize: 15, color: Color(0XFFF9F9F9)),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 106,
            width: double.infinity,
          
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "New",
                      style: TextStyle(fontSize: 15),
                    )
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: ListTile(
                    leading: UiHelper.CustomImage(imgurl: "Oval (4).png"),
                    title: Text(
                      "karennne liked your photo. 1h",
                      style: TextStyle(fontSize: 13),
                    ),
                    trailing: UiHelper.CustomImage(imgurl: "Rectangle.png"),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Text(
                "Today",
                style: TextStyle(fontSize: 15),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: ListTile(
              leading: UiHelper.CustomImage(imgurl: "Profiles.png"),
              title: Text(
                "karennne liked your photo. 1h",
                style: TextStyle(fontSize: 13),
              ),
              trailing: UiHelper.CustomImage(imgurl: "Rectangle.png"),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Text(
                "This Week",
                style: TextStyle(fontSize: 15),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: ListTile(
              leading: UiHelper.CustomImage(imgurl: "Oval (5).png"),
              title: Text(
                "craig_love mentioned you in a comment: @jacob_w exactly..",
                style: TextStyle(fontSize: 13),
              ),
              trailing: UiHelper.CustomImage(imgurl: "Rectangle.png"),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: ListTile(
                leading: UiHelper.CustomImage(imgurl: "Oval (6).png"),
                title: Text(
                  "martini_rond started following you. 3d",
                  style: TextStyle(fontSize: 13),
                ),
                trailing: Container(
                  height: 30,
                  width: 90,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white54,
                      ),
                      borderRadius: BorderRadius.circular(3)),
                  child: Center(
                    child: Text("Message"),
                  ),
                )),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: ListTile(
                leading: UiHelper.CustomImage(imgurl: "Oval (7).png"),
                title: Text(
                  "maxjacobson started following you. 3d",
                  style: TextStyle(fontSize: 13),
                ),
                trailing: Container(
                  height: 30,
                  width: 90,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white54,
                      ),
                      borderRadius: BorderRadius.circular(3)),
                  child: Center(
                    child: Text("Message"),
                  ),
                )),
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Text(
                "This Months",
                style: TextStyle(fontSize: 15),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: ListTile(
              leading: UiHelper.CustomImage(imgurl: "Oval (5).png"),
              title: Text(
                "craig_love mentioned you in a comment: @jacob_w exactly..",
                style: TextStyle(fontSize: 13),
              ),
              trailing: UiHelper.CustomImage(imgurl: "Rectangle.png"),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: ListTile(
                leading: UiHelper.CustomImage(imgurl: "Oval (6).png"),
                title: Text(
                  "martini_rond started following you. 3d",
                  style: TextStyle(fontSize: 13),
                ),
                trailing: Container(
                  height: 30,
                  width: 90,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white54,
                      ),
                      borderRadius: BorderRadius.circular(3)),
                  child: Center(
                    child: Text("Message"),
                  ),
                )),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: ListTile(
                leading: UiHelper.CustomImage(imgurl: "Oval (7).png"),
                title: Text(
                  "maxjacobson started following you. 3d",
                  style: TextStyle(fontSize: 13),
                ),
                trailing: Container(
                  height: 30,
                  width: 90,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white54,
                      ),
                      borderRadius: BorderRadius.circular(3)),
                  child: Center(
                    child: Text("Message"),
                  ),
                )),
          )
                ],
              ),
        ));
  }
}
