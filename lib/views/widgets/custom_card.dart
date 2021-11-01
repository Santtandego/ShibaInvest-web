import 'package:flutter/material.dart';

import 'package:shibainvest_web/utils/all_utils.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({ 
    Key? key,
    required this.pic,
    required this.width,
    required this.widget,
    }) : super(key: key);

  final String pic;
  final Widget widget;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      decoration: const BoxDecoration(
        borderRadius:  BorderRadius.all(Radius.circular(20)),
        color: gColor,
        boxShadow:  [
          BoxShadow(
            offset: Offset(0,3),
            blurRadius: 8,
            color: shadowColor 
          ),
        ]
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: width,
            height: width * 1.3,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              image: DecorationImage(
                image: AssetImage(pic),
                fit: BoxFit.fitHeight
              ),
            ),
          ),
          Container(
            child: widget,
            // height: 70,
          )
        ],
      ),
    );
  }
}