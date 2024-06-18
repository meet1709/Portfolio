import 'package:flutter/material.dart';
import 'package:meet_portfolio/models/responsive.dart';

class aboutText extends StatelessWidget {
  const aboutText(
      {super.key, required this.start, required this.end});
  final double start;
  final double end;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TweenAnimationBuilder(
          tween: Tween(begin: start, end: end),
          duration: const Duration(milliseconds: 200),
          builder: (context, value, child) {
            return Text(
              'A dedicated software engineer with a passion for${Responsive.isLargeMobile(context) ? '\n' : ' '}innovationand problem-solving.',
              // maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(color: Colors.white70, wordSpacing: 2, fontSize: value),
            );
          },
        ),
         
        TweenAnimationBuilder(
          tween: Tween(begin: start, end: end),
          duration: const Duration(milliseconds: 200),
          builder: (context, value, child) {
            return Text(
              'I hold a Bachelor\`sdegree in Information${Responsive.isLargeMobile(context) ? '\n' : ' '}& Communication Technology from DAIICT and${Responsive.isLargeMobile(context) ? '\n' : ' '}currently leverage my expertise at${Responsive.isLargeMobile(context) ? '\n' : ' '}',
              // maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(color: Colors.white70, wordSpacing: 2, fontSize: value),
            );
          },
        ),

       ShaderMask(
                shaderCallback: (bounds) {
                  return const LinearGradient(
                      end: Alignment.centerRight,
                      begin: Alignment.centerLeft,
                      colors: [
                        Colors.pink,
                        Colors.cyanAccent,
                      ]).createShader(bounds);
                },
                child: Text(
                  'Bank of America',
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: Colors.white,
                      fontSize: !Responsive.isDesktop(context)
                          ? Responsive.isLargeMobile(context)
                              ? 14
                              : 20
                          : 25,
                      fontWeight: FontWeight.bold),
                ),
              )
     
      ],
    );
  }
}
