import 'package:flutter/material.dart';
import 'Certifications/certifications.dart';
import 'about/aboutme.dart';
import 'main/intro/introduction.dart';
import 'main/main_view.dart';
import 'project/prohectsView.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  MainView(pages: [
       Introduction(),
       AboutMe(),
       ProjectsView(),
      Certifications(),
      
    ]);
  }
}
