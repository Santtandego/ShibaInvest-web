import 'package:flutter/material.dart';

import 'package:shibainvest_web/utils/all_utils.dart';
import 'package:shibainvest_web/views/widgets/all_widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: gColor,
      body: _HomeScreenBody()
   );
  }
}

class _HomeScreenBody extends StatelessWidget {
  const _HomeScreenBody({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: const [
        Header(),
        Spacer(),
        Footer(),
      ],
    );
  }
}