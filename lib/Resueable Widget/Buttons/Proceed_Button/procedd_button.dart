import 'package:flutter/material.dart';
import 'package:rental_car_app_ui/Models/Screen%20Orientation%20Model/screen_orientation.dart';
import 'package:rental_car_app_ui/Utility/Styles/Color%20Styles/colors.dart';
import 'package:rental_car_app_ui/Utility/Styles/Text%20Styles/text_styles.dart';



class proceed_button extends StatefulWidget {
  String buttonText;
  proceed_button(this.buttonText);

  @override
  State<proceed_button> createState() => _proceed_buttonState();
}

class _proceed_buttonState extends State<proceed_button> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Screen_Orientation_Model.height/14,
      width: Screen_Orientation_Model.width/1.3,
     decoration: BoxDecoration(
       color: AppColor.blueColor,
       borderRadius: BorderRadius.all(Radius.circular(60))
     ),
      child: Center(child: Text(widget.buttonText,style: headingText_textStyle(20, Colors.white),),),
    );
  }
}
