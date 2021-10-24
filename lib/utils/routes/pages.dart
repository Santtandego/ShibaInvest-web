import 'package:get/get.dart';

import 'package:shibainvest_web/views/home/home_screen.dart';

part 'paths.dart';

final List<GetPage<dynamic>> navigationPages = [

  GetPage(name: Paths.home, page: () => const HomeScreen())  
  
];