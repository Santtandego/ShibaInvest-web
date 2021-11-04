import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:get/get.dart';

import 'package:shibainvest_web/provider/all_providers.dart';
import 'package:shibainvest_web/utils/all_utils.dart';
import 'package:shibainvest_web/views/widgets/all_widgets.dart';

class HomeBodyUniques extends StatelessWidget {
  const HomeBodyUniques({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 35, vertical: 7),
      child: (Get.width >= 280 && Get.width <= 650) || Get.width < 280 ?
      Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          _HomeBodyLeft(),
        ],
      )
      :Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          _HomeBodyLeft(),
          // _HomeBodyRight()
        ],
      ),
    );
  }
}

class _HomeBodyLeft extends StatelessWidget {
  const _HomeBodyLeft({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var p = Provider.of<ResDesVars>(context);

    final _overview = Padding(
      padding: const EdgeInsets.only(bottom: 18),
      child: Text(
        Strings.overview,
        style:  TextStyle(
          fontSize:  p.overviewFs,
          color: bColor
        ),
        textAlign:  TextAlign.center,
      )
    );

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: p.headerMargin, vertical: 6),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _overview,
          ActionButton(title: Strings.generate, fontSize: p.textButtonFs)
        ],
      )
    );
  }
}

class _HomeBodyRight extends StatelessWidget {
  const _HomeBodyRight({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 4),
      child: CustomCard(
        pic: Assets.shibaPic,
        width: 320,
        widget: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Text(
              Strings.shibaName,
                style: TextStyle(
                  fontSize: 18,
                  color: bColor
                )),
            ActionButton(title: Strings.play, fontSize: 15)
          ],
        ),
      ),
    );
  }
}
