
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:task/login.dart';
import 'package:task/signup.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text("Sign up",style: TextStyle(fontSize: 39,fontWeight: FontWeight.bold,),),
            SizedBox(height: 15,),

            Text("Create an account, it's free",style: TextStyle(fontSize: 18.5),),

            SizedBox(height: 17,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("Username",style: TextStyle(fontSize: 20),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(2)
                    )

                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("Email",style: TextStyle(fontSize: 20),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(2)
                    )

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("Password",style: TextStyle(fontSize: 20),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(2)
                    )
                ),

              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("Confirm Password",style: TextStyle(fontSize: 20),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(2)
                    )

                ),
              ),
            ),
            //
            // SizedBox(height: 6,),
            //
            SizedBox(height: 25,),

            ElevatedButton(onPressed: (){
            },
                style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(45.0)),primary: Colors.blueAccent,fixedSize: Size(340, 65)),
                child: Text("Sign up",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)),

            SizedBox(height: 15,),

            Align(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?",style: TextStyle(fontSize: 16),),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
                  }, child: Text("Login",style: TextStyle(
                      fontSize: 16,color: Colors.black,fontWeight: FontWeight.bold),)),
                  SizedBox(height: 30,),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


