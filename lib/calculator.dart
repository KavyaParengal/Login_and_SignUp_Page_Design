import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {

  String output = "0";
  String history='';
  String _output = "";
  int num1 = 0;
  int num2 = 0;
  String operand = "";

  buttonPressed(String buttonText) {
    if (buttonText == "C") {
      _output = "0";
      num1 = 0;
      num2 = 0;
      operand = "";
    }
    else if (buttonText == "AC") {
      _output = "0";
      num1 = 0;
      num2 = 0;
      operand = "";
      history='';
    }
    else if (buttonText == "+" || buttonText == "-" || buttonText == "/" || buttonText == "*" || buttonText=='%') {
      num1 = int.parse(output);
      operand = buttonText;
      _output = "";
    } else if (buttonText == ".") {
      if (_output.contains(".")) {
        print("Already conatains a decimals");
        return;
      } else {
        _output = _output + buttonText;
      }
    } else if (buttonText == "=") {
      num2 = int.parse(output);

      if (operand == "+") {
        _output = (num1 + num2).toString();
        history=num1.toString() + operand.toString() + num2.toString();
      }
      if (operand == "-") {
        _output = (num1 - num2).toString();
        history=num1.toString() + operand.toString() + num2.toString();
      }
      if (operand == "*") {
        _output = (num1 * num2).toString();
        history=num1.toString() + operand.toString() + num2.toString();
      }
      if (operand == "/") {
        _output = (num1 / num2).toString();
        history=num1.toString() + operand.toString() + num2.toString();
      }
      if (operand == "%") {
        _output = (num1 % num2).toString();
        history=num1.toString() + operand.toString() + num2.toString();
      }
      // num1 = 0;
      // num2 = 0;
      // operand = "";
    } else {
      _output = int.parse(output + buttonText).toString();
    }

    print(_output);

    setState(() {
      output = _output;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      body: Column(
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 150,right: 20),
              child: Text(history,style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w400),
              ),
            ),
            alignment: Alignment(1.0,1.0),
          ),
          Container(
            //height: (MediaQuery.of(context).size.height * 0.3),
            child: Padding(
              padding: const EdgeInsets.only(right: 20,top: 20,left: 30),
              child: Text(output,style: TextStyle(color: Colors.white,fontSize: 33,fontWeight: FontWeight.bold),
              ),
            ),
            alignment: Alignment(1.0,1.0),//color: Colors.white,
          ),
          //Expanded(child: Divider(color: Colors.grey,thickness: 1,)),
          SizedBox(height: 40,),
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
                radius: 42,
                child: TextButton(child: Text(calculatortxt,
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                onPressed: (){
                  buttonPressed(calculatortxt);
                }
                  ,),
              );
  }
}


