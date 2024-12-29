import 'package:flutter/material.dart';

import '../../Models/Screen Orientation Model/screen_orientation.dart';
import '../../Resources/Images/Images Routes/images_routes.dart';
import '../../Utility/Styles/Color Styles/colors.dart';
import '../../Utility/Styles/Text Styles/text_styles.dart';



class best_car_container extends StatefulWidget {
  String model_name;
  String location;
  String total_seats;
  int index;
  best_car_container(this.model_name , this.location , this.total_seats ,this.index );

  @override
  State<best_car_container> createState() => _best_car_containerState();
}

class _best_car_containerState extends State<best_car_container> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Container(

        width: Screen_Orientation_Model.width/2.2,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: Screen_Orientation_Model.height/6,
              width: Screen_Orientation_Model.width/2.4,
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.3),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  image: DecorationImage(
                      image: NetworkImage(App_Images.tesla_model_3),
                      fit: BoxFit.cover
                  )
              ),
            ),
            Divider(
              indent: 20,
              endIndent: 20,
              thickness: 0.4,
              color: Colors.black,
            ),
            Text('${widget.model_name} ${widget.index+3}',style: headingText_textStyle(16, AppColor.blackColor),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.location_on,color: Colors.grey,size: 20,),
                Text(widget.location,style: normalText_textStyle(12, Colors.grey),)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.event_seat_sharp,color: Colors.blueAccent,size: 20,),
                Text("${widget.total_seats} Seats",style: normalText_textStyle(12, Colors.grey),),
                SizedBox(width: 10,),
                Icon(Icons.attach_money,color: Colors.blueAccent,size: 20,),
                Text("${widget.index+1*12}K / Hour",style: normalText_textStyle(12, Colors.grey),),
              ],
            ),
          ],),
      ),
    );
  }
}
