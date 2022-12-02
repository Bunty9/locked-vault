import 'package:flutter/material.dart';

import '../../common_widget/reusable_textfield.dart';
import '../login_screen/login_screen.dart';
import '../otp_screen/otp_screen.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 150,width: double.infinity,
                  child: Image.asset("assets/hersheybar381.png",),
                ),
                SizedBox(
                  height: 20,
                ),
                //Name
                Text(
                  "Username",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                // Name TextField
                ReUsableTextField(
                  hintText: "Username",
                  prefixIcon: Icons.person,
                ),
                //email
                Text(
                  "E-mail",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                // Email TextField
                ReUsableTextField(
                  hintText: "Your Email",
                  prefixIcon: Icons.email,
                  keyboardType: TextInputType.emailAddress,
                ),
                //password
                Text(
                  "Password",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                // password TextField
                ReUsableTextField(
                  hintText: "Password",
                  prefixIcon: Icons.lock_open,
                  suffixIcon: Icon(Icons.visibility_off),
                  obSecureText: true,
                ),
                Text(
                  "confirm Password",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                // password TextField
                ReUsableTextField(
                  hintText: "Confirm Password",
                  prefixIcon: Icons.lock_open,
                  suffixIcon: Icon(Icons.visibility_off),
                  obSecureText: true,
                ),
                SizedBox(
                  height: 20,
                ),
                //Sign Up
                Container(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Color(0xFF0C331F)),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_){
                        return OtpScreen();
                      }),);
                    },
                    child: Text("Sign Up"),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account?",style: TextStyle(color: Colors.black),),
                    TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_){
                        return LogInScreen();
                      }));
                    }, child: Text("Login",style: TextStyle(color: Color(0xFF563AFF),),))
                  ],),
                SizedBox(
                  height: 40,
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
