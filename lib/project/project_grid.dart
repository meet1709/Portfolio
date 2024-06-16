// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meet_portfolio/project_controller.dart';

import '../resource/constants.dart';
import 'project_model.dart';
import 'project_stack.dart';

class ProjectGrid extends StatelessWidget {
 ProjectGrid({super.key, this.crossAxisCount = 3,  this.ratio=1.3});

  final int crossAxisCount;
  final double ratio;
  final controller = Get.put(ProjectController());

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      itemCount: projectList.length,
      gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount, childAspectRatio: ratio),
      itemBuilder: (context, index) {
        return Obx(() => AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            margin: const EdgeInsets.symmetric(
                vertical: defaultPadding, horizontal: defaultPadding),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                gradient: const LinearGradient(colors: [
                  Colors.pinkAccent,
                  Colors.blue,
                ]),
                boxShadow:  [
                  BoxShadow(
                    color: Colors.pink,
                    offset: const Offset(-2, 0),
                    blurRadius: controller.hovers[index] ? 20 : 10,
                  ),
                  BoxShadow(
                      color: Colors.blue,
                      offset: const Offset(2, 0),
                      blurRadius: controller.hovers[index] ? 20 : 10,),
                ]),
            child: ProjectStack(index: index)
        ));
      },
    );
  }
}
