import 'package:calculator/custom_button.dart';
import 'package:flutter/material.dart';
class CaluculatorScreen extends StatefulWidget {
  @override
  State<CaluculatorScreen> createState() => _CaluculatorScreenState();
}

class _CaluculatorScreenState extends State<CaluculatorScreen> {
String ScreenResult=" ";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Calculator"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(child:
            Align(
              alignment: Alignment.centerLeft,
              child: Text(ScreenResult,style:
                TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w400
                ),),
            )
            ),

            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CustomButton( "7",onButtonClicked),
                  CustomButton( "8" ,onButtonClicked ),
                  CustomButton( "9",onButtonClicked),
                  CustomButton( "/",onOperatorClicked),

                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CustomButton("4",onButtonClicked),
                  CustomButton( "5",onButtonClicked),
                  CustomButton( "6",onButtonClicked),
                  CustomButton( "*",onOperatorClicked),
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CustomButton( "1",onButtonClicked),
                  CustomButton( "2",onButtonClicked),
                  CustomButton( "3",onButtonClicked),
                  CustomButton( "+",onOperatorClicked),
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CustomButton( ".",onButtonClicked),
                  CustomButton( "0",onButtonClicked),
                  CustomButton( "=",onEqualClicked),
                  CustomButton( "-",onOperatorClicked ),
                ],
              ),
            ),


          ],
        ),
      ),
    ) ;
  }


String lhs="";
String operator="";
onOperatorClicked(value)
{
  if(operator.isEmpty)
    {
      lhs=ScreenResult;
      operator=value;
    }
  else {
     lhs = Calculate(lhs, operator, ScreenResult);
     operator = value;
  }
 // print(lhs);
  ScreenResult = "";
  setState(() {

  });


}

onEqualClicked(value)
{
 String finalResult = Calculate(lhs, operator, ScreenResult);
 ScreenResult = finalResult;
 setState(() {

 });
 operator=value;

}


String Calculate(String lhs,String operator,String rhs)
{
  double RHS =double.parse(rhs);
  double LHS =double.parse(lhs);

  if(operator=="+")
    {
     double res =LHS+RHS;
     return res.toString();
    }
  else if(operator=="-"){
    double res =LHS-RHS;
    return res.toString();
  }
  else if(operator=="*"){
    double res =LHS*RHS;
    return res.toString();
  }
  else if(operator=="/"){
    double res =LHS/RHS;
    return res.toString();
  }
  return " ";

}


onButtonClicked(value)
{
  if(operator=="=")
    {
      ScreenResult="";
      operator="";
      lhs="";
    }
    ScreenResult +=value;
    setState(() {

    });
}

}

