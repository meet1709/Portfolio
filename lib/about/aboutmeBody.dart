import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:meet_portfolio/about/ProfilePicContainer.dart';

import '../../introComponents/AnimatedImage.dart';
import '../../models/responsive.dart';
import '../../resource/constants.dart';


import 'aboutText.dart';

import 'name.dart';


class AboutMeBody extends StatelessWidget {
  const AboutMeBody({super.key});
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Row(
      children: [
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              if (!Responsive.isDesktop(context))
                SizedBox(
                  height: size.height * 0.06,
                ),
              if (!Responsive.isDesktop(context))
                Row(
                  children: [
                    SizedBox(
                      width: size.width * 0.23,
                    ),
                    const ProfilePicContainer(
                      width: 150,
                      height: 200,
                    ),
                  ],
                ),
              if (!Responsive.isDesktop(context))
                SizedBox(
                  height: size.height * 0.1,
                ),
              const Responsive(
                  desktop: NameText(start: 40, end: 50),
                  largeMobile: NameText(start: 40, end: 35),
                  mobile: NameText(start: 35, end: 30),
                  tablet: NameText(start: 50, end: 40)),
              if (kIsWeb && Responsive.isLargeMobile(context))
                Container(
                  height: defaultPadding,
                  color: Colors.transparent,
                ),
              const SizedBox(height: defaultPadding / 2),
              const Responsive(
                desktop: aboutText(start: 14, end: 15),
                largeMobile: aboutText(start: 14, end: 12),
                mobile: aboutText(start: 14, end: 12),
                tablet: aboutText(start: 17, end: 14),
              ),
              const SizedBox(
                height: defaultPadding * 2,
              ),
            ],
          ),
        ),
        const Spacer(),
        if (Responsive.isDesktop(context)) const ProfilePicContainer(width: 250,height: 300,),
        const Spacer()
      ],
    );
  }
}
