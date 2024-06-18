// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:meet_portfolio/models/responsive.dart';
import 'package:meet_portfolio/resource/constants.dart';

class ProfilePicContainer extends StatefulWidget {
  const ProfilePicContainer({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  State<ProfilePicContainer> createState() => _ProfilePicContainerState();
}

class _ProfilePicContainerState extends State<ProfilePicContainer>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    )..repeat(reverse: true);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        final value = _controller.value;
        return Transform.translate(
          offset: Offset(0, 2 * value),
          child: Container(
            height: widget.height,
            width: widget.width,
            padding: const EdgeInsets.all(defaultPadding / 4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              gradient: const LinearGradient(colors: [
                Colors.pinkAccent,
                Colors.blue,
              ]),
              boxShadow: const [
                BoxShadow(
                  color: Colors.pink,
                  offset: Offset(-2, 0),
                  blurRadius: 20,
                ),
                BoxShadow(
                  color: Colors.blue,
                  offset: Offset(2, 0),
                  blurRadius: 20,
                ),
              ],
            ),
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Image.asset(
                'assets/images/profilepic.png',
                // height: Responsive.isLargeMobile(context)
                //     ? MediaQuery.sizeOf(context).width * 0.2
                //     : Responsive.isTablet(context)
                //         ? MediaQuery.sizeOf(context).width * 0.14
                //         : 200,
                // width: Responsive.isLargeMobile(context)
                //     ? MediaQuery.sizeOf(context).width * 0.2
                //     : Responsive.isTablet(context)
                //         ? MediaQuery.sizeOf(context).width * 0.14
                //         : 200,
                fit: BoxFit.contain,
              ),
            ),
          ),
        );
      },
    );
  }
}
