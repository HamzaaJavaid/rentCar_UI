import 'package:flutter/material.dart';
import 'package:rental_car_app_ui/Resources/Images/Images%20Routes/images_routes.dart';
import 'package:rental_car_app_ui/Resources/Routes/route_names.dart';
import 'package:rental_car_app_ui/Resueable%20Widget/Buttons/Proceed_Button/procedd_button.dart';
import 'package:rental_car_app_ui/Utility/Animations/Fade%20In%20Animation/fade_in_animation.dart';
import 'package:rental_car_app_ui/Utility/Animations/Ios%20Screen%20Transition/ios_screen_transition.dart';
import 'package:rental_car_app_ui/Utility/Styles/Color%20Styles/colors.dart';
import 'package:rental_car_app_ui/Utility/Styles/Text%20Styles/text_styles.dart';
import 'package:rental_car_app_ui/View/Main%20Dashboard/main_dashboard.dart';

import '../../Models/Screen Orientation Model/screen_orientation.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 5) , (){
      //Navigator.of(context).push(IOSStyleTransition(MainDashboard()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          FadeInWidget(child: Image.asset(App_Images.splash_screen_car_image,width: Screen_Orientation_Model.width/1,)),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: Screen_Orientation_Model.height/2,
                width: Screen_Orientation_Model.width/1,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:BorderRadius.all(Radius.circular(20))
                ),
                child: Column(
                  children: [
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 6,
                          backgroundColor: AppColor.blueColor,

                        ),SizedBox(width: 3,),
                        CircleAvatar(
                          radius: 6,
                          backgroundColor: AppColor.greyColor,

                        ),SizedBox(width: 3,),
                        CircleAvatar(
                          radius: 6,
                          backgroundColor: AppColor.greyColor,

                        )
                      ],
                    ),
                    SizedBox(height: 39,),
                    Text("Rent a Vehicle",style: headingText_textStyle(35, Colors.black),),
                    Text("Easily Only Here!",style: headingText_textStyle(35, Colors.black),),
                    Text("We are Solution for those who are looking for ",style: normalText_textStyle(17, Colors.black),),
                    Text("a Car Rental to travel anywhere & anytime ",style: normalText_textStyle(17, Colors.black),),
                    SizedBox(height: Screen_Orientation_Model.height/20,),
                    InkWell(
                      onTap: (){
                        Navigator.pushNamed(context, RouteName.mainDashboard);
                      },
                        child: proceed_button('Get Started')),
                    SizedBox(height: 10,),
                    Text("Skip",style: headingText_textStyle(17, AppColor.blackColor),),

                  ],
                ),
              ),
            ],
          )
        ],
      )

    );
  }
}
