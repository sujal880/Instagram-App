import 'package:flutter/material.dart';
import 'package:instagram_series/Screens/Profile/postscreen.dart';
import 'package:instagram_series/Screens/Profile/tagsscreen.dart';
import 'package:instagram_series/Widgets/uihelper.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              UiHelper.CustomImage(imgurl: "lock.png"),
              SizedBox(
                width: 5,
              ),
              Text(
                "jacob_w",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: UiHelper.CustomImage(imgurl: "Shape.png"))
          ],
        ),
        body: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                UiHelper.CustomImage(imgurl: "Oval.png"),
                SizedBox(
                  width: 50,
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          "54",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "Posts",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Column(
                      children: [
                        Text(
                          "834",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "Followers",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Column(
                      children: [
                        Text(
                          "162",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "Following",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Text(
                  "Jacob West",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Text(
                  "Digital goodies designer @pixsellz ",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Text(
                  "Everything is designed.",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 40,
              width: 360,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6))),
                child: Text(
                  "Edit Profile",
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    Container(
                      height: 64,
                      width: 64,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black,
                          border: Border.all(color: Colors.grey.shade700)),
                      child: Center(
                        child: Icon(
                          Icons.add,
                          size: 40,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "New",
                      style: TextStyle(fontSize: 12),
                    )
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    Container(
                        clipBehavior: Clip.antiAlias,
                        height: 64,
                        width: 64,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.black,
                            border: Border.all(color: Colors.grey.shade700)),
                        child: UiHelper.CustomImage(imgurl: "Oval (1).png")),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "Friends",
                      style: TextStyle(fontSize: 12),
                    )
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    Container(
                        clipBehavior: Clip.antiAlias,
                        height: 64,
                        width: 64,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.black,
                            border: Border.all(color: Colors.grey.shade700)),
                        child: UiHelper.CustomImage(imgurl: "Oval (2).png")),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "Sport",
                      style: TextStyle(fontSize: 12),
                    )
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    Container(
                        clipBehavior: Clip.antiAlias,
                        height: 64,
                        width: 64,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.black,
                            border: Border.all(color: Colors.grey.shade700)),
                        child: UiHelper.CustomImage(imgurl: "Oval (3).png")),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "Design",
                      style: TextStyle(fontSize: 12),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 50,
              child: AppBar(
                bottom: TabBar(
                  indicatorColor: Colors.white,
                  indicatorSize: TabBarIndicatorSize.tab,
                  tabs: [
                    Tab(
                      icon: UiHelper.CustomImage(imgurl: "Grid Icon.png"),
                    ),
                    Tab(
                      icon: UiHelper.CustomImage(imgurl: "Tags Icon.png"),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: TabBarView(children: [
                PostScreenProfile(),
                TagsScreen()
              ]),
            )
          ],
        ),
      ),
    );
  }
}
