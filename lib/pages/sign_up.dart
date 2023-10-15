import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_form/main.dart';


class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  Color bgcolor =  Colors.black; //MyApp().bgcolor;
  Color bgcolor2 =  Colors.grey;  //MyApp().bgcolor2;

  @override
  Widget build(BuildContext context) {

    TextStyle txtstyle1 = const TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.grey);
    TextStyle txtstyle2 = const TextStyle(fontWeight: FontWeight.bold,fontSize: 31,color: Colors.white);

    return Scaffold(
      backgroundColor: bgcolor,
      appBar: AppBar(
        title: Text("Sign Up".toUpperCase()),
      ),
      body: Container(
        margin: const EdgeInsets.only(left: 12,right: 12),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 50,),
            Text("SIGN UP",style: txtstyle1,),
            const SizedBox(height: 20,),
            Text("Create new account",style: txtstyle2,),
            const SizedBox(height: 20,),
            Row(
              children: [
                Text("Already A Member?",style: txtstyle1,),
                TextButton(onPressed: () { },
                child: const Text("Log In",style: TextStyle(fontSize: 16),)),
              ],
            ),
            const SizedBox(height: 20,),
            // First & Last Name
            Row(
              children: [
                Flexible(
                  child: TextField(
                    style: TextStyle(color: Colors.white,fontSize: 21,fontWeight: FontWeight.bold),
                    decoration: InputDecoration(
                      alignLabelWithHint: true,
                      focusColor: Colors.blue,
                      filled: true,
                      fillColor: bgcolor2,
                      labelText: "First Name",
                      labelStyle: txtstyle1,
                      suffixIcon: Icon(Icons.contact_mail_outlined,color: Colors.white,),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(21)),
                    ),
                  ),
                ),
                SizedBox(width: 20,),
                Flexible(
                  child: TextField(
                    style: TextStyle(color: Colors.white,fontSize: 21,fontWeight: FontWeight.bold),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: bgcolor2,
                      focusColor: Colors.blue,
                      labelText: "Last Name",
                      labelStyle: txtstyle1,
                      suffixIcon: Icon(Icons.contact_mail_outlined,color: Colors.white,),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(21)),


                    ),
                  ),
                ),
              ],
            ),
            /// Email
            SizedBox(height: 10,),
            Flexible(
              child: TextField(
                style: TextStyle(color: Colors.white,fontSize: 21,fontWeight: FontWeight.bold),
                decoration: InputDecoration(
                  alignLabelWithHint: true,
                  focusColor: Colors.blue,
                  filled: true,
                  fillColor: bgcolor2,
                  labelText: "Email",
                  labelStyle: txtstyle1,
                  suffixIcon: Icon(Icons.markunread_sharp ,color: Colors.white,),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(21)),
                ),
              ),
            ),
            SizedBox(height: 10,),
            /// Password
            Flexible(
              child: TextField(
                obscureText: true,
                style: TextStyle(color: Colors.white,fontSize: 21,fontWeight: FontWeight.bold),
                decoration: InputDecoration(
                  alignLabelWithHint: true,
                  focusColor: Colors.blue,
                  filled: true,
                  fillColor: bgcolor2,
                  labelText: "Password",
                  labelStyle: txtstyle1,
                  suffixIcon: Icon(Icons.remove_red_eye ,color: Colors.white,),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(21)),
                ),
              ),
            ),
            SizedBox(height: 20,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width/2.2,
                  decoration: BoxDecoration(
                      color: bgcolor2,
                      borderRadius: BorderRadius.circular(21)
                  ),
                  child: TextButton(
                          child: Text("Change method",style: TextStyle(color: Colors.white ,fontSize: 16),),
                          onPressed: () {
                          },
                  ),
                ),
                SizedBox(width: 10,),
                Container(
                  width: MediaQuery.of(context).size.width/2.2,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(21)
                  ),
                  child: TextButton(
                    child: Text("Create account",style: TextStyle(color: Colors.white ,fontSize: 16),),
                    onPressed: () {
                    },
                  ),
                ),
              ],
            ),


          ],

        ),
      ),

    );
  }
}
