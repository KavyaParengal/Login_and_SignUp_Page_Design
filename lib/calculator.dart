import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      body: Column(
        children: [
          Container(
            height: (MediaQuery.of(context).size.height * 0.3),
            //color: Colors.white,
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildCircleAvatar('AC', Colors.purpleAccent),
                buildCircleAvatar('%', Colors.purpleAccent),
                buildCircleAvatar('/', Colors.purpleAccent),
                buildCircleAvatar('C', Colors.purpleAccent)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildCircleAvatar('7', Colors.deepPurple),
                buildCircleAvatar('8', Colors.deepPurple),
                buildCircleAvatar('9', Colors.deepPurple),
                buildCircleAvatar('*', Colors.purpleAccent)

              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildCircleAvatar('4', Colors.deepPurple),
                buildCircleAvatar('5', Colors.deepPurple),
                buildCircleAvatar('6', Colors.deepPurple),
                buildCircleAvatar('-', Colors.purpleAccent)

              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildCircleAvatar('1', Colors.deepPurple),
                buildCircleAvatar('2', Colors.deepPurple),
                buildCircleAvatar('3', Colors.deepPurple),
                buildCircleAvatar('+', Colors.purpleAccent)

              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildCircleAvatar('.', Colors.deepPurple),
                buildCircleAvatar('0', Colors.deepPurple),
                buildCircleAvatar('()', Colors.deepPurple),
                buildCircleAvatar('=', Colors.pink),
              ],
            ),
          )
        ],
      ),
    );
  }

  CircleAvatar buildCircleAvatar(String calculatortxt,Color clrbutton) {
    return CircleAvatar(
                backgroundColor: clrbutton,
                radius: 45,
                child: Text(
                  calculatortxt,
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              );
  }
}
