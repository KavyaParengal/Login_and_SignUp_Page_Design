
import 'package:flutter/material.dart';
import 'package:task/split.dart';

class Result extends StatefulWidget {
  const Result({Key? key}) : super(key: key);

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 80,),
          Text('Result',style: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),),
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.only(left: 12,right: 12,top: 2),
            child: Container(
              height: (MediaQuery.of(context).size.height * 0.26),
              decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15),),
              color: Colors.blueGrey,
              ),
            ),
          ),
          SizedBox(height: 200,),
          ElevatedButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Split()));
            },
            child: Text('Split Again',style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            )),
            style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 130.0, vertical: 15.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)
                ),
                primary: Colors.blueGrey
            ),
          ),
        ],
      ),
    );
  }
}
