import 'package:flutter/material.dart';
import 'package:instagram_series/Screens/bottomnav/bottomnav.dart';
import 'package:instagram_series/Widgets/uihelper.dart';

class LoginScreen extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHelper.CustomImage(imgurl: "logo.png"),
            SizedBox(
              height: 20,
            ),
            UiHelper.CustomTextField(
                controller: emailController, text: "Email", tohide: false),
            SizedBox(
              height: 15,
            ),
            UiHelper.CustomTextField(
                controller: passwordController, text: "Password", tohide: true),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: UiHelper.CustomTextButton(
                      text: "Forgot password?", callback: () {}),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            UiHelper.CustomButton(callback: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>BottomNavScreen()));
            }, buttonname: "Log In"),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.CustomImage(imgurl: "Icon.png"),
                UiHelper.CustomTextButton(
                    text: "Log in with Facebook", callback: () {})
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "OR",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text("Don't have an account?",style: TextStyle(fontSize: 14,color: Colors.white),),
              UiHelper.CustomTextButton(text: "Sign Up", callback: (){})
            ],)
          ],
        ),
      ),
    );
  }
}
