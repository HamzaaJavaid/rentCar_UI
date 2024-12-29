import 'package:flutter/material.dart';

import '../../Models/Screen Orientation Model/screen_orientation.dart';
import '../../Utility/Styles/Color Styles/colors.dart';
import '../../Utility/Styles/Text Styles/text_styles.dart';

class carSpecsContainer extends StatelessWidget {
  IconData icon;
  String title;
  String value;
  carSpecsContainer(this.icon,this.title , this.value);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: Screen_Orientation_Model.height/6,
        width: Screen_Orientation_Model.width/3.5,
        decoration: BoxDecoration(
            color: AppColor.darkBlue,
            borderRadius: BorderRadius.all(Radius.circular(10))
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0,top: 15),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.white,
                    child: Icon(this.icon,color: Colors.black,),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0,top: 5),
              child: Row(
                children: [
                  Text(this.title,style: headingText_textStyle(15, AppColor.blackColor.withOpacity(0.4)),)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0,top: 2),
              child: Row(
                children: [
                  Text(this.value,style: headingText_textStyle(23, AppColor.blackColor),)
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
