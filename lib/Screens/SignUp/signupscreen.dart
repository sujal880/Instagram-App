import 'package:flutter/material.dart';
import 'package:instagram_series/Screens/Login/loginscreen.dart';
import 'package:instagram_series/Widgets/uihelper.dart';

class SignUpScreen extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHelper.CustomImage(imgurl: "logo.png"),
            SizedBox(
              height: 30,
            ),
            UiHelper.CustomTextField(
                controller: emailController,
                text: "Email",
                tohide: false,
                textinputtype: TextInputType.emailAddress),
            SizedBox(
              height: 10,
            ),
            UiHelper.CustomTextField(
                controller: passwordController,
                text: "Password",
                tohide: true,
                textinputtype: TextInputType.text),
            SizedBox(
              height: 10,
            ),
            UiHelper.CustomTextField(
                controller: usernameController,
                text: "Username",
                tohide: false,
                textinputtype: TextInputType.name),
            SizedBox(
              height: 30,
            ),
            UiHelper.CustomButton(callback: () {}, buttonname: "Sign Up"),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an Account?",
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
                UiHelper.CustomTextButton(
                    callback: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()));
                    },
                    text: "Sign In")
              ],
            )
          ],
        ),
      ),
    );
  }
}
