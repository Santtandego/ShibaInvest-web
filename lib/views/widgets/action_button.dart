import 'package:flutter/material.dart';

import 'package:shibainvest_web/utils/all_utils.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final actionButton = Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 22),
      decoration:  BoxDecoration(
        color: aColor,
        borderRadius: const BorderRadius.all(Radius.circular(15)),
        boxShadow: [
          BoxShadow(
            offset: const Offset(2,3),
            blurRadius: 6,
            color:  Colors.black.withOpacity(0.36)
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