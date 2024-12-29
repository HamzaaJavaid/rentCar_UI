import 'package:flutter/material.dart';

import '../../Models/Screen Orientation Model/screen_orientation.dart';
import '../../Resources/Images/Images Routes/images_routes.dart';
import '../../Utility/Styles/Color Styles/colors.dart';
import '../../Utility/Styles/Text Styles/text_styles.dart';



class carContainer extends StatelessWidget {
  String image , rating , model_name , model_cost;
  carContainer(this.image,this.rating , this.model_name , this.model_cost);

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: Screen_Orientation_Model.height/3.5,
      width: Screen_Orientation_Model.width/1.8,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          image: DecorationImage(image: AssetImage(image),fit: BoxFit.fill)
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              children: [
                Icon(Icons.star , color: AppColor.yellowColor,),
                Text(rating,style: normalText_textStyle(13, Colors.black),)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: Screen_Orientation_Model.height/7,),
                Text(model_name,style: headingText_textStyle(20, AppColor.blackColor),),
                Text('${model_cost} / per day       ',style: normalText_textStyle(10, AppColor.blackColor),)
              ],
            ),
          )
        ],
      ),
    );
  }
}
