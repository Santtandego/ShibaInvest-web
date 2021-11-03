import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:get/get.dart';

import 'package:shibainvest_web/provider/all_providers.dart';
import 'package:shibainvest_web/utils/all_utils.dart';

class Header extends StatelessWidget {
  const Header({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var p = Provider.of<ResDesVars>(context).headerMargin;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: p, vertical: 10),
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
    var p = Provider.of<ResDesVars>(context);
    final appLogo = Row(
      children:  [
        Image(
          width: p.logoSize,
          image: const AssetImage(Assets.appLogo),
          fit: BoxFit.cover
        ),
        const SizedBox(width: 5),
        Text(
          Strings.shiba,
          style: TextStyle(
            color: bColor,
            fontSize: p.logoFs
          ),
        ),
        Text(
          Strings.invest,
          style: TextStyle(
            color: aColor,
            fontSize: p.logoFs
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

//coming soon

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


