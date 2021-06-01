import 'package:flutter/material.dart';
import 'package:flutter_app/const/const.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'my_card.dart';

enum GenderOption {male,female}

class GenderCard extends StatelessWidget {

  late bool isActive;
  late GenderOption gender;
   final VoidCallback? onPress;
  GenderCard({ required this.gender, this.isActive=false,required this.onPress});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Icon(gender==GenderOption.male?FontAwesomeIcons.mars:FontAwesomeIcons.venus, size: 80.0,),
            SizedBox(height:15.0),

            Text(gender==GenderOption.male? "MALE":"Female",style: TextStyle(fontSize: 32.0),),

          ],
        ),


    );
  }
}
