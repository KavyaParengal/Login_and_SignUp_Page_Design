
import 'package:flutter/material.dart';

class Split extends StatefulWidget {
  const Split({Key? key}) : super(key: key);

  @override
  State<Split> createState() => _SplitState();
}

class _SplitState extends State<Split> {

  double _value = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        title: Text('Split your bills in seconds !',style: TextStyle(
          color: Colors.black,
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15,right: 15,top: 2),
            child: Container(
              //color: Colors.blueGrey,
                height: (MediaQuery.of(context).size.height * 0.23),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15),),
                color: Colors.blueGrey,
              ),
            ),
          ),
          SizedBox(height: 26,),
          Text('How many friends ?',style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18
          ),),
          SizedBox(height: 13,),
          Slider(
            min: 0,
              max: 100,activeColor: Colors.blueGrey,
              value: _value,
              onChanged: (value){
                setState(() {
                  _value = value;
                });
              }
          ),
          SizedBox(height: 13,),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15,right: 15,top: 2),
                child: Container(
                  height: 110,
                  width: 220,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15),),
                    color: Colors.blueGrey,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15,right: 15,top: 2),
                child: Container(
                  height: 80,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15),),
                    color: Colors.blueGrey,
                  ),
                  //child: Text('Tax %'),
                ),
              )
            ],
          ),

        ],
      ),
    );
  }
}
