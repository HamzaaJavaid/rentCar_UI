

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rental_car_app_ui/Resources/Routes/route_names.dart';
import 'package:rental_car_app_ui/Utility/Animations/Fade%20In%20Animation/fade_in_animation.dart';
import 'package:rental_car_app_ui/View/Main%20Dashboard/main_dashboard.dart';
import 'package:rental_car_app_ui/View/Specs_Screen/car_specs.dart';
import 'package:rental_car_app_ui/View/Splash%20Screen/splash_screen.dart';

class Routes{


  static Route<dynamic> generatedRoutes(RouteSettings routeSettings){

    switch(routeSettings.name){

      case RouteName.mainDashboard:
         return MaterialPageRoute(builder: (context)=>FadeInWidget(child: MainDashboard()));
      case RouteName.splashScreen:
        return MaterialPageRoute(builder: (context)=>FadeInWidget(child: SplashScreen()));
      case RouteName.carSpecScreen:
        return MaterialPageRoute(builder: (context)=>FadeInWidget(child: Car_Spec_Screen()));


      default:
        return MaterialPageRoute(builder: (context)=>SplashScreen());

    }


  }

}