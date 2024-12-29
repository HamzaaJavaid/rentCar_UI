import "package:flutter/material.dart";
import "package:rental_car_app_ui/Models/Screen%20Orientation%20Model/screen_orientation.dart";
import "package:rental_car_app_ui/Resources/Routes/route_names.dart";
import "package:rental_car_app_ui/Resources/Routes/routes.dart";

import "View/Splash Screen/splash_screen.dart";

void main(){
  runApp(Initialization_Interface());
}


class Initialization_Interface extends StatelessWidget {
  const Initialization_Interface({super.key});

  @override
  Widget build(BuildContext context) {
    Screen_Orientation_Model.height = MediaQuery.of(context).size.height;
    Screen_Orientation_Model.width = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light
      ),
      onGenerateRoute: Routes.generatedRoutes,
      initialRoute: RouteName.splashScreen,
      home:SplashScreen()
    );
  }
}
