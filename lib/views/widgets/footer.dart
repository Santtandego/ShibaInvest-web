import 'package:flutter/material.dart';

import 'package:shibainvest_web/utils/all_utils.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/link.dart';

class Footer extends StatelessWidget {
  const Footer({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      margin: const EdgeInsets.only(top: 20),
      color: dColor,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          _FooterLeft(),
          Spacer(),
          _FooterCenter(),
          Spacer(),
          _FooterRight(),
        ],
      ),
    );
  }
}

class _FooterLeft extends StatelessWidget {
  const _FooterLeft({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        _FooterText(Strings.privacyAndTerms, Paths.legal),
        _FooterText(Strings.qAndA, Paths.qAndA),
        _FooterText(Strings.contactUs, Paths.contactUs),
      ],
    );
  }
}

class _FooterCenter extends StatelessWidget {
  const _FooterCenter({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        _FooterText(Strings.donateQ, Paths.legal),
      ],
    );
  }
}

class _FooterRight extends StatelessWidget {
  const _FooterRight({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        _FooterIcon(FontAwesomeIcons.github, Urls.github),
        _FooterIcon(FontAwesomeIcons.reddit, Urls.reddit),
        _FooterIcon(FontAwesomeIcons.twitter, Urls.twitter),
      ],
    );
  }
}

class _FooterText extends StatelessWidget {

  final  String path;
  final String title;
  const _FooterText(this.title, this.path);

  @override
  Widget build(BuildContext context) {
    final footerText = Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 19,
          fontWeight: FontWeight.bold,
          color: cColor
        ),
      ),
    );
 
    return InkWell(
      child: footerText,
      hoverColor: cColor,
      onTap: () => print(path),
    );
  }
}

class _FooterIcon extends StatelessWidget {
  final IconData icon;
  final String url;
  const _FooterIcon(this.icon, this.url);

  @override
  Widget build(BuildContext context) {
    final footerIcon = Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Icon(
        icon,
        size: 24,
        color: cColor,
      )
    );


    return Link(
      uri: Uri.parse(url),
      target: LinkTarget.blank,
      builder: ( _ , followLink){
        return InkWell(
          child: footerIcon,
          hoverColor: Colors.transparent,
          focusColor: Colors.transparent,  
          onTap: followLink,
        );
      },
    );
  }
}