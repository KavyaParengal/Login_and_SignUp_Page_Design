
import 'package:flutter/material.dart';
import 'package:task/login.dart';
import 'package:task/signup.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [




          Text("Welcome",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
          SizedBox(height: 20,),

          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text("Splash Flutter provides extraordinary flutter tutorials. Do subscribe!",textAlign: TextAlign.center,style: TextStyle(fontSize: 16),),
          ),

          SizedBox(height: 35,),

          new Image.asset(
            'images/welcome.jpg',
            width: 540.0,
            height: 350.0,
            fit: BoxFit.cover,
          ),

          SizedBox(height: 40,),

          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
          },
            style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(side: BorderSide(color: Colors.black54),borderRadius: BorderRadius.circular(33.0)),backgroundColor: Colors.white,fixedSize: Size(380, 65)),
            child: Text("Login",style: TextStyle(
                fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold
            ),),),

          SizedBox(height: 17,),

          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Signup()));
          },
            style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(33.0)),primary: Colors.blue,fixedSize: Size(380, 65)),
            child: Text("Sign UP",
                style: TextStyle(
                  fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold,
                )),)
        ],
      ),
    );
  }
}
