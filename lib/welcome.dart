
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
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text("Welcome",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
            const SizedBox(height: 20,),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text("Splash Flutter provides extraordinary flutter tutorials. Do subscribe!",textAlign: TextAlign.center,style: TextStyle(fontSize: 16),),
            ),
            Image.asset(
              'images/welcome.jpg',
              fit: BoxFit.cover,
            ),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const Login()));
            },
              style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(side: const BorderSide(color: Colors.black54),borderRadius: BorderRadius.circular(33.0)),backgroundColor: Colors.white,fixedSize: const Size(380, 65)),
              child: const Text("Login",style: TextStyle(
                  fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold
              ),),),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const Signup()));
            },
              style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(33.0)),primary: Colors.blue,fixedSize: const Size(380, 65)),
              child: const Text("Sign UP",
                  style: TextStyle(
                    fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold,
                  )),)
          ],
        ),
      ),
    );
  }
}
