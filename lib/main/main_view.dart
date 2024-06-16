// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../controller.dart';
import '../models/responsive.dart';
import '../resource/constants.dart';
import 'drawer/customdrawer.dart';
import 'drawer/top_navigationbar.dart';
import 'intro/navigationButton.dart';

class MainView extends StatelessWidget {
  const MainView({
    Key? key,
    required this.pages,
  }) : super(key: key);

  final List<Widget> pages;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      drawer: const CustomDrawer(),
      body: Center(
        child: Column(
          children: [

            kIsWeb && !Responsive.isLargeMobile(context)
                ? const SizedBox(
                    height: defaultPadding * 2,
                  )
                : const SizedBox(
                    height: defaultPadding / 2,
                  ),
            const SizedBox(
              height: 80,
              child: TopNavigationBar(),
            ),
            // if (Responsive.isLargeMobile(context))
              const Row(
                children: [Spacer(), NavigationButtonList(), Spacer()],
              ),
            Expanded(
              flex: 9,
              child: PageView(
                scrollDirection: Axis.vertical,
                physics: const NeverScrollableScrollPhysics(),
                controller: controller,
                children: [...pages],
              ),
            )

          ],
        ),


      ),
    );
  }
}
