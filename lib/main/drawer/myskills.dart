// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:meet_portfolio/resource/constants.dart';

class AnimatedLinearProgressIndicator extends StatelessWidget {
  const AnimatedLinearProgressIndicator({
    Key? key,
    required this.percentage,
    required this.title,
    this.image,
  }) : super(key: key);

  final double percentage;
  final String title;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: TweenAnimationBuilder(
        tween: Tween(begin: 0.0, end: percentage),
        duration: const Duration(seconds: 1),
        builder: (context, value, child) {
          return Column(children: [
            Row(
              children: [
                Image.asset(
                  image!,
                  height: 15,
                  width: 15,
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  title,
                  style: const TextStyle(color: Colors.white),
                ),
                const Spacer(),
                Text('${(value * 100).toInt().toString()}%'),
              ],
            ),
            const SizedBox(
              height: defaultPadding / 2,
            ),
            LinearProgressIndicator(
              value: value,
              backgroundColor: Colors.black,
              color: Colors.amberAccent,
            ),
          ]);
        },
      ),
    );
  }
}

class MySkills extends StatelessWidget {
  const MySkills({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AnimatedLinearProgressIndicator(
          percentage: 0.9,
          title: 'Flutter',
          image: 'assets/icons/flutter.png',
        ),
        AnimatedLinearProgressIndicator(
            percentage: 0.95, title: 'Dart', image: 'assets/icons/dart.png'),
        AnimatedLinearProgressIndicator(
            percentage: 0.7,
            title: 'Firebase',
            image: 'assets/icons/firebase.png'),
        AnimatedLinearProgressIndicator(
            percentage: 0.85, title: 'PostgreSQL', image: 'assets/icons/postgresql.png'),
        AnimatedLinearProgressIndicator(
            percentage: 0.8,
            title: 'Responsive Design',
            image: 'assets/icons/flutter.png'),
        AnimatedLinearProgressIndicator(
            percentage: 0.9,
            title: 'Riverpode',
            image: 'assets/icons/flutter.png'),
        AnimatedLinearProgressIndicator(
            percentage: 0.87, title: 'Java', image: 'assets/icons/java.png'),
        AnimatedLinearProgressIndicator(
            percentage: 0.80, title: 'SpringBoot', image: 'assets/icons/spring.png'),
            AnimatedLinearProgressIndicator(
            percentage: 0.75, title: 'Jenkins', image: 'assets/icons/jenkins.png'),
            AnimatedLinearProgressIndicator(
            percentage: 0.70, title: 'Ansible', image: 'assets/icons/ansible.png'),
             AnimatedLinearProgressIndicator(
            percentage: 0.95, title: 'C/C++', image: 'assets/icons/cplus.png'),
      ],
    );
  }
}

