import 'package:flutter/material.dart';

import 'package:shibainvest_web/utils/all_utils.dart';
import 'package:shibainvest_web/views/widgets/all_widgets.dart';

class HomeBodyUniques extends StatelessWidget {
  const HomeBodyUniques({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 35, vertical: 7),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          _HomeBodyLeft(),
          _HomeBodyRight()
        ],
      ),
    );
  }
}

class _HomeBodyLeft extends StatelessWidget {
  const _HomeBodyLeft({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const wellcomeMessage = Text(
      Strings.wellcomeMessage,
      style: TextStyle(
        fontSize: 40,
        color: bColor
      ),
      textAlign:  TextAlign.center,
    );

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 6),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          wellcomeMessage,
          ActionButton()
        ],
      )
    );
  }
}

class _HomeBodyRight extends StatelessWidget {
  const _HomeBodyRight({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.all(20),
      child: const FlutterLogo(),
    );
  }
}
