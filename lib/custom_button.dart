import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class CustomButton extends StatelessWidget {
  String text;
 Function onButtonClick;
  CustomButton( this.text,this.onButtonClick);
  @override
  Widget build(BuildContext context) {
    return  Expanded(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: CupertinoColors.systemOrange,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              side: BorderSide(width: 3,color: Colors.white),
            )
          ),
            onPressed: (){
             onButtonClick(text);
            }
            , child: Text(text,
          style:
          TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w400
          ),
          )
        )
    ) ;
  }
}
