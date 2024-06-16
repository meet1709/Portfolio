import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../resource/constants.dart';

class ContactIcon extends StatelessWidget {
  const ContactIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: defaultPadding),
      child: Row(
        children: [
          const Spacer(),
          IconButton(onPressed: () {launchUrl(Uri.parse('https://www.linkedin.com/in/meet-panchal-0992a7212/'));}, icon: SvgPicture.asset('assets/icons/linkedin.svg')),
          IconButton(onPressed: () {launchUrl(Uri.parse('https://github.com/meet1709'));}, icon: SvgPicture.asset('assets/icons/github.svg')),
           IconButton(icon: SvgPicture.asset('assets/icons/twitter.svg'), onPressed: () => launchUrl(Uri.parse('https://x.com/Panchal90277335')),),
         IconButton(icon:FaIcon(FontAwesomeIcons.instagram, color: Colors.grey,), onPressed: () => launchUrl(Uri.parse('https://www.instagram.com/meet.panchal86/'))),
          const Spacer(),
        ],
      ),
    );
  }
}
