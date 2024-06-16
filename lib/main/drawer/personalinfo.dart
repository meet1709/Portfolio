import 'package:flutter/material.dart';
import '../../resource/constants.dart';
import 'headerinfo.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: defaultPadding/2,),
        AreaInfoText(title: 'Contact', text: '9574422393'),
        AreaInfoText(title: 'Email', text: 'meetpanchal86.mp@gmail.com'),
        AreaInfoText(title: 'LinkedIn', text: 'meet-panchal-0992a7212'),
        AreaInfoText(title: 'Github', text: 'meet1709'),
        SizedBox(
          height: defaultPadding,
        ),
        Text('Skills',style: TextStyle(color: Colors.white),),
        SizedBox(
          height: defaultPadding,
        ),
      ],
    );
  }
}
