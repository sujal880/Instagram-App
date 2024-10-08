import 'package:flutter/material.dart';
import 'package:instagram_series/Widgets/uihelper.dart';

class FollowingScreen extends StatelessWidget {
  var arrContent = [
    {
      "img": "Oval (2).png",
      "txt": "karennne liked 3 posts. 3h",
      "lastimg": "Rectangle.png"
    },
    {
      "img": "Oval (3).png",
      "txt": "kiero_d, zackjohn and craig_love liked joshua_l photo. 3h",
      "lastimg": "Rectangle.png"
    },
    {
      "img": "Oval (4).png",
      "txt": "kiero_d started following craig_love. 3h",
      "lastimg": "Rectangle.png"
    },
    {
      "img": "Oval (5).png",
      "txt": "craig_love liked 8 posts. 3h",
      "lastimg": "Rectangle.png"
    },
    {
      "img": "Oval (2).png",
      "txt": "karennne liked 3 posts. 3h",
      "lastimg": "Rectangle.png"
    },
    {
      "img": "Oval (3).png",
      "txt": "karennne liked 3 posts. 3h",
      "lastimg": "Rectangle.png"
    },
    {
      "img": "Oval (4).png",
      "txt": "karennne liked 3 posts. 3h",
      "lastimg": "Rectangle.png"
    },
    {
      "img": "Oval (5).png",
      "txt": "karennne liked 3 posts. 3h",
      "lastimg": "Rectangle.png"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(top: 20),
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(top: 20),
            child: ListTile(
              leading: UiHelper.CustomImage(
                  imgurl: arrContent[index]["img"].toString()),
              title: Text(arrContent[index]["txt"].toString()),
              trailing: UiHelper.CustomImage(
                  imgurl: arrContent[index]["lastimg"].toString()),
            ),
          );
        },
        itemCount: arrContent.length,
      ),
    ));
  }
}
