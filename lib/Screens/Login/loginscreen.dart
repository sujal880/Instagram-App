import 'package:flutter/material.dart';
import 'package:instagram_series/Screens/SignUp/signupscreen.dart';
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
            const SizedBox(
              height: 20,
            ),
            UiHelper.CustomTextField(
                controller: emailController,
                text: "Email",
                tohide: false,
                textinputtype: TextInputType.emailAddress),
            const SizedBox(
              height: 10,
            ),
            UiHelper.CustomTextField(
                controller: passwordController,
                text: "Password",
                tohide: true,
                textinputtype: TextInputType.text),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 22),
                  child: UiHelper.CustomTextButton(
                      callback: () {}, text: "Forgot password?"),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            UiHelper.CustomButton(
                callback: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BottomNavScreen()));
                },
                buttonname: "Log In"),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.CustomImage(imgurl: "Icon.png"),
                UiHelper.CustomTextButton(
                    callback: () {}, text: "Log in with Facebook")
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "OR",
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
                UiHelper.CustomTextButton(
                    callback: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignUpScreen()));
                    },
                    text: "Sign Up")
              ],
            )
          ],
        ),
      ),
    );
  }
}
