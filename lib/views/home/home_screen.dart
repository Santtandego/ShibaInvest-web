import 'package:flutter/material.dart';

import 'package:shibainvest_web/provider/all_providers.dart';
import 'package:shibainvest_web/utils/all_utils.dart';
import 'package:shibainvest_web/views/widgets/all_widgets.dart';

import 'package:shibainvest_web/views/home/home_uniques.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BreakPoints.contextWidthScreen(context, MediaQuery.of(context).size.width);

    return const SafeArea(
      child:  Scaffold(
        backgroundColor: gColor,
        body:  _HomeScreenBody(),
       ),
    );
  }
}

class _HomeScreenBody extends StatelessWidget {
  const _HomeScreenBody({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Header(),
        HomeBodyUniques(),
        Footer(),
      ],
    );
  }
}