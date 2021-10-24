import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:shibainvest_web/utils/all_utils.dart';

class Header extends StatelessWidget {
  const Header({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      padding: const EdgeInsets.all(4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          _AppLogo(),
        ],
      ),
    );
  }
}

class _AppLogo extends StatelessWidget {
  const _AppLogo({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
   
    final appLogo = Row(
      children: const [
        Image(
          width: 47,
          image: AssetImage(Assets.appLogo)
        ),
        SizedBox(width: 5),
        Text(
          Strings.shiba,
          style: TextStyle(
            color: bColor,
            fontSize: 30
          ),
        ),
        Text(
          Strings.invest,
          style: TextStyle(
            color: aColor,
            fontSize: 30
          ),
        ),

      ],
    );
    return InkWell(
      child: appLogo,
      hoverColor: Colors.transparent,
      focusColor: Colors.transparent,
      onTap: () => Get.toNamed(Paths.home),
    );
  }
}

//comming soon

// class _AuthButtons extends StatelessWidget {
//   const _AuthButtons({ Key? key }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {

//     final logInButton = InkWell(
//       hoverColor: Colors.transparent,
//       focusColor: Colors.transparent,
//       child: Container(
//         padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 6),
//         child: const Text(Strings.logIn, style: TextStyle(color: bColor, fontSize: 25),),
//       ),
//       onTap: () =>  print(Strings.logIn),      
//     );

//     final signUpButton = InkWell(
//       hoverColor: Colors.transparent,
//       focusColor: Colors.transparent,
//       child: Container(
//         padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 25),
//         decoration:  BoxDecoration(
//           border:  Border.all(width: 2, color: aColor ),
//           borderRadius:  const BorderRadius.all(Radius.circular(15))
//         ),
//         child: const Text(Strings.signUp, style: TextStyle(color: aColor, fontSize: 25),),
//       ),
//       onTap: () =>  print(Strings.signUp),      
//     );

//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       mainAxisSize: MainAxisSize.min,
//       children:  [
//         logInButton,
//         SizedBox(width: 15,),
//         signUpButton
//       ]
//     );
//   }
// }


