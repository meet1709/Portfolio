import 'package:flutter/material.dart';


import '../../controller.dart';
import '../../models/responsive.dart';
import 'navigationTextButton.dart';

class NavigationButtonList extends StatelessWidget {
  const NavigationButtonList({super.key});
  @override
  Widget build(BuildContext context) {
    return  TweenAnimationBuilder(tween: Tween(begin: 0.0,end: 1.0), duration: const Duration(milliseconds: 200), builder: (context, value, child) {
      return Transform.scale(
        scale: value,
        child: Row(
          children: [
            NavigationTextButton(onTap: () {controller.animateToPage(0, duration: const Duration(milliseconds: 500), curve: Curves.easeIn);}, text: 'Home'),
            NavigationTextButton(onTap: () {controller.animateToPage(1, duration: const Duration(milliseconds: 500), curve: Curves.easeIn);}, text: 'AboutMe'),
          //  if(!Responsive.isLargeMobile(context)) NavigationTextButton(onTap: () {}, text: 'About us'),
            NavigationTextButton(onTap: () {controller.animateToPage(2, duration: const Duration(milliseconds: 500), curve: Curves.easeIn);}, text: 'Projects'),
            NavigationTextButton(onTap: () {controller.animateToPage(3, duration: const Duration(milliseconds: 500), curve: Curves.easeIn);}, text: 'Certifications'),
            if(!Responsive.isLargeMobile(context)) NavigationTextButton(onTap: () {}, text: 'Achievements'),
          ],
        ),
      );
    },);
  }
}