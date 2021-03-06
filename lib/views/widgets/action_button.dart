import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:shibainvest_web/provider/all_providers.dart';
import 'package:shibainvest_web/utils/all_utils.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({
     Key? key,
     required this.title,
     required this.fontSize
    }) : super(key: key);

  final String title;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    var p = Provider.of<ResDesVars>(context);

    final actionButton = Container(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: p.headerMargin),
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
      child:  Text(
          title,
          style: TextStyle(
            color: gColor,
            fontSize:  fontSize
          )
        ),
    );

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: InkWell(
        child: actionButton,
        hoverColor: Colors.transparent,
        focusColor: Colors.transparent,
        onTap: (){},
      ),
    );
  }
}