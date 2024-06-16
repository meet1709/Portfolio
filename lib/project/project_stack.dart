import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meet_portfolio/project/project_model.dart';
import 'package:url_launcher/url_launcher.dart';
import '../project_controller.dart';
import '../resource/constants.dart';
import 'project_details.dart';


class ProjectStack extends StatelessWidget {
  final controller = Get.put(ProjectController());
  ProjectStack({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (value) {
        controller.onHover(index, value);
      },
      onTap: () {
        launchUrl(Uri.parse('${projectList[index].link}'));
      },
      borderRadius: BorderRadius.circular(30),
      child: AnimatedContainer(
          padding: const EdgeInsets.only(left: defaultPadding,right: defaultPadding,top: defaultPadding),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: bgColor),
          duration: const Duration(milliseconds: 500),
          child: ProjectDetail(index: index,),
      ),
    );
  }
}