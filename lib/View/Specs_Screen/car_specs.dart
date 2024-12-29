import 'package:flutter/material.dart';
import 'package:rental_car_app_ui/Models/Screen%20Orientation%20Model/screen_orientation.dart';
import 'package:rental_car_app_ui/Resources/Images/Images%20Routes/images_routes.dart';
import 'package:rental_car_app_ui/Resueable%20Widget/Buttons/Proceed_Button/procedd_button.dart';
import 'package:rental_car_app_ui/Resueable%20Widget/Car%20Specs/specification_container.dart';
import 'package:rental_car_app_ui/Resueable%20Widget/Encircled_Icons/Encircled_Icons.dart';
import 'package:rental_car_app_ui/Utility/Styles/Color%20Styles/colors.dart';
import 'package:rental_car_app_ui/Utility/Styles/Text%20Styles/text_styles.dart';


class Car_Spec_Screen extends StatefulWidget {
  const Car_Spec_Screen({super.key});

  @override
  State<Car_Spec_Screen> createState() => _Car_Spec_ScreenState();
}

class _Car_Spec_ScreenState extends State<Car_Spec_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    encircledIcons(Icons.arrow_back),
                    Text('Car Details',style: headingText_textStyle(20, AppColor.blackColor),),
                    encircledIcons(Icons.safety_divider_sharp)
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                height: Screen_Orientation_Model.height/2.5,
                width: Screen_Orientation_Model.width/1,
                decoration:  BoxDecoration(
                  image: DecorationImage(image: AssetImage(App_Images.car_spec_image))
                ),
              ),
              Container(
                height: Screen_Orientation_Model.height/2,
                width: Screen_Orientation_Model.width/1,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.1),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  )
                ),
                child: Column(
                  children: [
                    SizedBox(height: Screen_Orientation_Model.height/20,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 28.0),
                      child: Row(
                        children: [
                          Text('Tesla Model 3',style: headingText_textStyle(30, AppColor.blackColor),),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 28.0),
                      child: Row(
                        children: [
                          Text('A car with High Specs that are rented at \namazing and astonishing price',style: normalText_textStyle(17, AppColor.blackColor),),
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Divider(
                      endIndent: 30,
                      indent: 30,
                      thickness: 0.7,
                      color:AppColor.blackColor,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 28.0),
                      child: Row(
                        children: [
                          Text("Specifications",style: headingText_textStyle(20, AppColor.blackColor.withOpacity(0.5)),),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                       carSpecsContainer(Icons.event_seat , "Capacity" , "4 Seats"),
                        carSpecsContainer(Icons.power_input_outlined , "Engine Out" , "600 HP"),
                        carSpecsContainer(Icons.speed , "Max Speed" , "400 km/h"),

                      ],
                    ),
                    proceed_button("Book Car")
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
