import 'package:flutter/material.dart';
import 'package:rental_car_app_ui/Models/Screen%20Orientation%20Model/screen_orientation.dart';
import 'package:rental_car_app_ui/Resources/Images/Images%20Routes/images_routes.dart';
import 'package:rental_car_app_ui/Resources/Routes/route_names.dart';
import 'package:rental_car_app_ui/Resueable%20Widget/Main%20Dashboard%20Components/Car%20Container%20Component.dart';
import 'package:rental_car_app_ui/Resueable%20Widget/Main%20Dashboard%20Components/best_car_container.dart';
import 'package:rental_car_app_ui/Resueable%20Widget/Main%20Dashboard%20Components/company_logo_listview.dart';
import 'package:rental_car_app_ui/Utility/Styles/Color%20Styles/colors.dart';
import 'package:rental_car_app_ui/Utility/Styles/Text%20Styles/text_styles.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';


class MainDashboard extends StatefulWidget {
  const MainDashboard({super.key});

  @override
  State<MainDashboard> createState() => _MainDashboardState();
}

class _MainDashboardState extends State<MainDashboard> {
  NotchBottomBarController _controller = NotchBottomBarController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(1),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 20,),
                Row(
            
                  children: [
                    SizedBox(width: Screen_Orientation_Model.width/15,),
                    Text('Location',style: normalText_textStyle(15, AppColor.blackColor),),
                    SizedBox(width: Screen_Orientation_Model.width/1.6,),
                    Icon(Icons.circle_notifications,size: 30,),
                    
                  ],
                ),
                Row(
            
                  children: [
                    SizedBox(width: Screen_Orientation_Model.width/15,),
                    Text('Islamabad , Pakistan',style: headingText_textStyle(20, AppColor.blackColor),),
                    Text('Islamabad ',style: headingText_textStyle(20, Colors.transparent),)
                  ],
                ),
                SizedBox(height: 20,),
                Container(
                  height: Screen_Orientation_Model.height/15,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                          decoration: InputDecoration(
                            fillColor: Colors.white10,
            
                            hintText: "Search Your Dream Car",
                            hintStyle: normalText_textStyle(20, Colors.grey.withOpacity(0.7)),
                            enabledBorder:OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(30)),
                              borderSide: BorderSide(color: Colors.grey.withOpacity(0.2))
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(30)),
                                //borderSide: BorderSide(color: Colors.grey)
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(30)),
                               // borderSide: BorderSide(color: Colors.grey)
                            ),
                            disabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(30)),
                                //borderSide: BorderSide(color: Colors.grey)
                            ),
                            prefixIcon: Icon(Icons.search)
                          ),
                          ),
                        ),
                        SizedBox(width: 10,),
                        CircleAvatar(child: Icon(Icons.settings_input_composite_rounded,color: Colors.white,),backgroundColor: AppColor.blackColor,)
                      ],
                    ),
                  ),
                ),
                Container(
                  height: Screen_Orientation_Model.height/10,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (context,index){
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: Screen_Orientation_Model.height/30,
                          width: Screen_Orientation_Model.width/5,
                          decoration: BoxDecoration(
                              color:AppColor.greyColor.withOpacity(0.3),
                              shape: BoxShape.circle,
                              image: DecorationImage(image: NetworkImage(company_logo[index]),fit: BoxFit.cover)
                          ),
            
                        ),
                      );
                    },
            
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  height: Screen_Orientation_Model.height/1.4,
                  width: Screen_Orientation_Model.width/1,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.07),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)
                    )
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 10,),
                     Row(
                       children: [
                         SizedBox(width: Screen_Orientation_Model.width/20,),
                         Text('Best Cars',style: headingText_textStyle(30, Colors.black),),
                       ],
                     ),
                     Container(
                       height: Screen_Orientation_Model.height/3.5,
                       child:  ListView.builder(
                         itemCount: 2,
                         scrollDirection: Axis.horizontal,
                         itemBuilder: (context,index){
                           return InkWell(
                               onTap: (){
                                 Navigator.pushNamed(context, RouteName.carSpecScreen);

                               },
                               child: best_car_container("Tesla Model","F-${index+4} Sector , ICT","4",index));
                         },
                       )
                     ),
                      Row(
                        children: [
                          SizedBox(width: Screen_Orientation_Model.width/20,),
                          Text('Nearby',style: headingText_textStyle(30, Colors.black),),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('SUV',style: headingText_textStyle(15, AppColor.blackColor),),
                          SizedBox(width: Screen_Orientation_Model.width/1.7,),
                          Text('View All',style: normalText_textStyle(15, AppColor.blackColor),),
                          SizedBox(width: 8,),
                          Icon(Icons.north_east, color: AppColor.yellowColor,)
                        ],
                      ),
                      SizedBox(height: 10,),
                      CarouselSlider(
                        options: CarouselOptions(
                          height: Screen_Orientation_Model.height/4,
                          autoPlay: false,
                          autoPlayInterval: Duration(seconds: 3),
                          enlargeCenterPage: true,
                          aspectRatio: 16 / 9,
                          enableInfiniteScroll: true,
                          viewportFraction: 0.5,
                        ),
                        items: [
                          carContainer(App_Images.car_image, "4.8", "Corolla GLI", "40K"),
                          carContainer(App_Images.car_image, "4.8", "Corolla GLI", "40K"),
                          carContainer(App_Images.car_image, "4.8", "Corolla GLI", "40K"),
                          carContainer(App_Images.car_image, "4.8", "Corolla GLI", "40K"),
                          carContainer(App_Images.car_image, "4.8", "Corolla GLI", "40K"),
                        ].map((i) {
                          return Builder(
                            builder: (BuildContext context) {
                              return i;
                            },
                          );
                        }).toList(),
                      ),
                    ],
                  )
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: AnimatedNotchBottomBar(
        notchColor: Colors.black,
        color: Colors.black,
        bottomBarItems: [
          const BottomBarItem(
            inActiveItem: Icon(
              Icons.home_filled,
              color: Colors.white,
            ),
            activeItem: Icon(
              Icons.home_filled,
              color: Colors.white,
            ),

          ),
          const BottomBarItem(
            inActiveItem: Icon(
              Icons.receipt_long,
              color: Colors.white,
            ),
            activeItem: Icon(
              Icons.receipt_long,
              color: Colors.white,
            ),


          ),
          const BottomBarItem(
            inActiveItem: Icon(
              Icons.calendar_month,
              color: Colors.white,
            ),
            activeItem: Icon(
              Icons.calendar_month,
              color: Colors.white,
            ),

          ),
          const BottomBarItem(
            inActiveItem: Icon(
              Icons.person,
              color: Colors.white,
            ),
            activeItem: Icon(
              Icons.person,
              color: Colors.white,
            ),


          ),
        ],
        notchBottomBarController: _controller,
        onTap: (int value) { print(value); }, kIconSize: 20, kBottomRadius: 30,
      ),
    );
  }
}
