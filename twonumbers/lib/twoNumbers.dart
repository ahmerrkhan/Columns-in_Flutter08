import 'package:flutter/material.dart';

class twoNumbers extends StatefulWidget {
  @override
  _twoNumbersState createState() => _twoNumbersState();
}

class _twoNumbersState extends State<twoNumbers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Two Numbers!"),
        elevation: 15.0,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.orange,Colors.green],
              begin: Alignment.topLeft,
              end: Alignment.topRight,
            ),
          ),
        ),
      ),
      body: custom(),
    );
  }
}
class custom extends StatefulWidget {
  @override
  _customState createState() => _customState();
}

class _customState extends State<custom> {
  TextEditingController num1 = new TextEditingController();
  TextEditingController num2 = new TextEditingController();
  String result ="0";

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Container(child:TextField(controller: num1,keyboardType: TextInputType.number,),decoration: BoxDecoration(color: Colors.orange,borderRadius: BorderRadius.circular(16.0)),width: 100,height: 50,),
             ),
             SizedBox(height: 10.0,),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Container(child:TextField(controller: num2,keyboardType: TextInputType.number,),decoration: BoxDecoration(color: Colors.yellowAccent,borderRadius: BorderRadius.circular(16.0)),width: 100,height: 50,),
             ),
           ],),
           FlatButton(onPressed: (){setState(() {
             int sum = int.parse(num1.text)+int.parse(num2.text);
             result =sum.toString();
           });}, child: Text("result"),color: Colors.green,),
           Container(child: Text(result),),
         ],
      ),
    );
  }
}

