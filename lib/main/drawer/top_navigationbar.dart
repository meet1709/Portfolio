import 'package:flutter/material.dart';
import 'package:meet_portfolio/models/responsive.dart';
import 'package:meet_portfolio/resource/constants.dart';

import '../intro/connectButton.dart';
import '../intro/sideMenuButton.dart';

class TopNavigationBar extends StatelessWidget {
  const TopNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.center,


        children: [
          const Spacer(),
          Padding(padding: const EdgeInsets.all(defaultPadding / 10),
          child: !Responsive.isLargeMobile(context) ? Image.asset('assets/images/SideIcon.png', alignment: Alignment.topLeft, width: 400,height: 400,) : 
          
          MenuButton(
            onTap: () => Scaffold.of(context).openDrawer(),
          )
          ,
          ),

          const Spacer(flex: 2,),

          const ConnectButton(),
          const Spacer()
        ],

      ),
    );
  }
}