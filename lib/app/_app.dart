import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
import 'package:get/get.dart';
import 'package:shibainvest_web/utils/all_utils.dart';


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: Strings.shibaInvest,
        initialRoute: Paths.home,
        getPages: navigationPages,
    );
  }
}