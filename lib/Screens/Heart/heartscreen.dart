import 'package:flutter/material.dart';
import 'package:instagram_series/Screens/Heart/Following/followingscreen.dart';
import 'package:instagram_series/Screens/Heart/You/youscreen.dart';

class HeartScreen extends StatelessWidget {
  const HeartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
              unselectedLabelColor: Colors.grey,
              labelColor: Colors.white,
              indicatorColor: Colors.white,
              indicatorSize: TabBarIndicatorSize.tab,
              tabs: [
                Tab(
                  text: "Following",
                ),
                Tab(
                  text: "You",
                )
              ]),
        ),
        body: TabBarView(children: [
          FollowingScreen(),
          YouScreen()
        ]),
      ),
    );
  }
}
