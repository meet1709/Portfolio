import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'SocialMediaIcons.dart';

class SocialMediaIconColumn extends StatelessWidget {
  const SocialMediaIconColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SocialMediaIcon(
            icon: 'assets/icons/linkedin.svg',
            onTap: () => launchUrl(
                Uri.parse('https://www.linkedin.com/in/meet-panchal-0992a7212/'))),
        SocialMediaIcon(
          icon: 'assets/icons/github.svg',
          onTap: () => launchUrl(Uri.parse('https://github.com/meet1709')),
        ),
         SocialMediaIcon(icon: 'assets/icons/twitter.svg', onTap: () => launchUrl(Uri.parse('https://x.com/Panchal90277335')),),
         SocialMediaIcon(icon: 'assets/icons/instagram.svg', onTap: () => launchUrl(Uri.parse('https://www.instagram.com/meet.panchal86/'))),
      ],
    );
  }
}
