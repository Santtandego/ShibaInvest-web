import 'package:flutter/material.dart';

import 'package:shibainvest_web/utils/all_utils.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final actionButton = Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 22),
      decoration: const BoxDecoration(
        color: aColor,
        borderRadius:  BorderRadius.all(Radius.circular(15)),
        boxShadow: [
          BoxShadow(
            offset: Offset(2,3),
            blurRadius: 6,
            color:  shadowColor
          )
        ]
      ),
      child: const Text(
          Strings.generate,
          style: TextStyle(
            color: gColor,
            fontSize: 30
          )
        ),
    );

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
      child: InkWell(
        child: actionButton,
        hoverColor: Colors.transparent,
        focusColor: Colors.transparent,
        onTap: (){},
      ),
    );
  }
}