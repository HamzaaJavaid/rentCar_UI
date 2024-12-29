import 'package:flutter/material.dart';

import '../../Models/Screen Orientation Model/screen_orientation.dart';
import '../../Utility/Styles/Color Styles/colors.dart';

class encircledIcons extends StatelessWidget {
  IconData icon;
  encircledIcons(this.icon);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Screen_Orientation_Model.height/20,
      width: Screen_Orientation_Model.width/10,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: AppColor.blackColor , width: 1)
      ),
      child: Icon(icon),
    );
  }
}
