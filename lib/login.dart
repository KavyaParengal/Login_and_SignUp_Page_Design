import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:task/signup.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Text("Login",style: TextStyle(fontSize: 39,fontWeight: FontWeight.bold,),),
          SizedBox(height: 15,),

          Text("Login to your account",style: TextStyle(fontSize: 18.5),),

          SizedBox(height: 17,),

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

          SizedBox(height: 6,),

          SizedBox(height: 15,),

          ElevatedButton(onPressed: (){
          },
              style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(45.0)),primary: Colors.blueAccent,fixedSize: Size(340, 65)),
              child: Text("Login",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)),

          SizedBox(height: 15,),

          Align(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account?",style: TextStyle(fontSize: 16),),
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Signup()));
                }, child: Text("Sign Up",style: TextStyle(
                    fontSize: 16,color: Colors.black,fontWeight: FontWeight.bold),)),
                SizedBox(height: 30,),

              ],
            ),

          ),

          new Image.asset(
            'images/login.jpg',
            width: 410,
            height: 300,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}

