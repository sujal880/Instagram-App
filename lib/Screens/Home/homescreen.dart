import 'package:flutter/material.dart';
import 'package:instagram_series/Screens/Messages/messagescreen.dart';
import 'package:instagram_series/Widgets/uihelper.dart';

class HomeScreen extends StatelessWidget {
  var arrContent = [
    {
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ2dVbLMzlaeJnL5C6RpZ8HLRECJhH6ILEGKg&s",
      "name": "Your Story"
    },
    {
      "img":
          "https://plus.unsplash.com/premium_photo-1664474619075-644dd191935f?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8aW1hZ2V8ZW58MHx8MHx8fDA%3D",
      "name": "karennne"
    },
    {
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ2dVbLMzlaeJnL5C6RpZ8HLRECJhH6ILEGKg&s",
      "name": "zackjohn"
    },
    {
      "img":
          "https://plus.unsplash.com/premium_photo-1664474619075-644dd191935f?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8aW1hZ2V8ZW58MHx8MHx8fDA%3D",
      "name": "kieron_d"
    },
    {
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ2dVbLMzlaeJnL5C6RpZ8HLRECJhH6ILEGKg&s",
      "name": "Your Story"
    },
    {
      "img":
          "https://plus.unsplash.com/premium_photo-1664474619075-644dd191935f?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8aW1hZ2V8ZW58MHx8MHx8fDA%3D",
      "name": "karennne"
    },
    {
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ2dVbLMzlaeJnL5C6RpZ8HLRECJhH6ILEGKg&s",
      "name": "zackjohn"
    },
    {
      "img":
          "https://plus.unsplash.com/premium_photo-1664474619075-644dd191935f?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8aW1hZ2V8ZW58MHx8MHx8fDA%3D",
      "name": "kieron_d"
    },
    {
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ2dVbLMzlaeJnL5C6RpZ8HLRECJhH6ILEGKg&s",
      "name": "Your Story"
    },
    {
      "img":
          "https://plus.unsplash.com/premium_photo-1664474619075-644dd191935f?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8aW1hZ2V8ZW58MHx8MHx8fDA%3D",
      "name": "karennne"
    },
    {
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ2dVbLMzlaeJnL5C6RpZ8HLRECJhH6ILEGKg&s",
      "name": "zackjohn"
    },
    {
      "img":
          "https://plus.unsplash.com/premium_photo-1664474619075-644dd191935f?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8aW1hZ2V8ZW58MHx8MHx8fDA%3D",
      "name": "kieron_d"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 88,
          backgroundColor: Colors.black12,
          leading: UiHelper.CustomImage(imgurl: "Camera Icon.png"),
          title: UiHelper.CustomImage(imgurl: "Instagram Logo (1).png"),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {},
                icon: UiHelper.CustomImage(imgurl: "IGTV.png")),
            IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>MessageScreen()));
                },
                icon: UiHelper.CustomImage(imgurl: "Messanger.png"))
          ],
        ),
        body: Column(
          children: [
            SizedBox(
              height: 80,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage:
                            NetworkImage(arrContent[index]["img"].toString()),
                      ),
                    );
                  },
                  itemCount: arrContent.length,
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ),
            SizedBox(
                height: 30,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          arrContent[index]["name"].toString(),
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      );
                    },
                    itemCount: arrContent.length,
                    scrollDirection: Axis.horizontal,
                  ),
                )),
            Container(
              height: 54,
              width: double.infinity,
              color: Colors.black12,
              child: ListTile(
                leading: UiHelper.CustomImage(imgurl: "person1.png"),
                title: Text(
                  "joshua_I",
                  style: TextStyle(fontSize: 13, color: Color(0XFFF9F9F9)),
                ),
                subtitle: Text(
                  "Tokyo, Japan",
                  style: TextStyle(fontSize: 11, color: Color(0XFFF9F9F9)),
                ),
                trailing: UiHelper.CustomImage(imgurl: "More Icon.png"),
              ),
            ),
           SizedBox(height: 8,),
           Container(
             clipBehavior: Clip.antiAlias,
             height: 375,
             width: double.infinity,
             decoration: BoxDecoration(

             ),
             child:  Image.asset("assets/images/Rectangle (1).png",fit: BoxFit.cover,)
           ),
            SizedBox(height: 20,),
            Row(children: [
              SizedBox(width: 20,),
              UiHelper.CustomImage(imgurl: "Like.png"),
              SizedBox(width: 20,),
              UiHelper.CustomImage(imgurl: "Comment.png"),
              SizedBox(width: 20,),
              UiHelper.CustomImage(imgurl: "Messanger.png"),
              SizedBox(width: 240,),
              UiHelper.CustomImage(imgurl: "Save.png")
            ],),
           SizedBox(height: 10,),
           Row(children: [
             SizedBox(width: 20,),
             UiHelper.CustomImage(imgurl: "Ovalone.png"),
             SizedBox(width: 5,),
             Text("Liked by craig_love and 44,686 others",style: TextStyle(fontSize: 13,color: Color(0XFFF9F9F9)),)
           ],),
            Row(children: [
              SizedBox(width: 20,),
              Text("joshua_l",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Color(0XFFF9F9F9)),),
              Text(" The game in Japan was amazing and I want",style: TextStyle(fontSize: 13,color: Color(0XFFF9F9F9)),)
            ],)
          ],
        ));
  }
}
