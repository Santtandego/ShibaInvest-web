import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/link.dart';

import 'package:shibainvest_web/provider/all_providers.dart';
import 'package:shibainvest_web/utils/all_utils.dart';


class Footer extends StatelessWidget {
  const Footer({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var p = Provider.of<ResDesVars>(context);

    return Container(
      alignment: Alignment.bottomCenter,
      padding: EdgeInsets.symmetric(horizontal: p.footerMargin, vertical: 15),
      margin: const EdgeInsets.only(top: 20),
      color: dColor,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          _FooterLeft(),
          _FooterCenter(),
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
    var p = Provider.of<ResDesVars>(context).footerFs;

    final footerText = Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: Text(
        title,
        style: TextStyle(
          fontSize: p,
          fontWeight: FontWeight.bold,
          color: cColor
        ),
      ),
    );
 
    return InkWell(
      child: footerText,
      hoverColor: cColor,
      onTap: (){},
    );
  }
}

class _FooterIcon extends StatelessWidget {
  final IconData icon;
  final String url;
  const _FooterIcon(this.icon, this.url);

  @override
  Widget build(BuildContext context) {
    var p = Provider.of<ResDesVars>(context).footerIconS;

    final footerIcon = Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: Icon(
        icon,
        size: p,
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