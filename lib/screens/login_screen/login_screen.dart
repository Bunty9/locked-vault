import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:locked_wallet/screens/signup_screen/signup_screen.dart';

import '../../common_widget/reusable_textfield.dart';
import '../dashboard/dashboard.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({Key? key}) : super(key: key);

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
                //email
                Text(
                  "E-mail",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                // Email TextField
                ReUsableTextField(
                  hintText: "Your Email",
                  keyboardType: TextInputType.emailAddress,
                  prefixIcon: Icons.email_outlined,
                ),
                //password
                Text(
                  "Password",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                // password TextField
                ReUsableTextField(
                  hintText: "Your Password",
                  obSecureText: true,
                  prefixIcon: Icons.lock_open,
                  suffixIcon: Icon(Icons.visibility_off),
                ),
                //remember me
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF563AFF),
                    ),
                  ),
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
                        return DashBoard();
                      },),);
                    },
                    child: Text("Login"),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text("Don't have an account ?",style: TextStyle(color: Colors.black),),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_){
                      return SignUpScreen();
                    }),);
                  }, child: Text("Sign up",style: TextStyle(color: Color(0xFF563AFF),),))
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


