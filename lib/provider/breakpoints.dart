
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

class ResDesVars with ChangeNotifier {

  //HEADER
  double _headerMargin = 20;
  double get headerMargin => _headerMargin;
  set headerMargin(double val) {
    _headerMargin = val;
    notifyListeners();
  }

  double _logoSize = 30;
  double get logoSize => _logoSize;
  set logoSize(double val) {
    _logoSize = val;
    notifyListeners();

  }

  double _logoFs = 30;
  double get logoFs => _logoFs;
  set logoFs(double val) {
    _logoFs = val;
    notifyListeners();
  }

  //HOME BODY
  double _overviewFs = 60;
  double get overviewFs => _overviewFs;
  set overviewFs(double val) {
    _overviewFs = val;
    notifyListeners();
  }

  double _textButtonFs = 50;
  double get textButtonFs => _textButtonFs;
  set textButtonFs(double val) {
    _textButtonFs = val;
    notifyListeners();
  }

  double _homeBodyMargin = 50;
  double get homeBodyMargin => _homeBodyMargin;
  set homeBodyMargin(double val) {
    _homeBodyMargin = val;
    notifyListeners();
  }

  //footer
  double _footerFs = 30;
  double get footerFs => _footerFs;
  set footerFs(double val) {
    _footerFs = val;
    notifyListeners();
  }

  double _footerMargin = 30;
  double get footerMargin => _footerMargin;
  set footerMargin(double val) {
    _footerMargin = val;
    notifyListeners();
  }

  double _footerIconS = 30;
  double get footerIconS => _footerIconS;
  set footerIconS(double val) {
    _footerIconS = val;
    notifyListeners();
  }

  double _footerHeight = 30;
  double get footerHeight => _footerHeight;
  set footerHeight(double val) {
    _footerHeight = val;
    notifyListeners();
  }

  //legal
  double _bodyTitleFs = 30;
  double get bodyTitleFs => _bodyTitleFs;
  set bodyTitleFs(double val) {
    _bodyTitleFs = val;
    notifyListeners();
  }

  double _bodySubtitleFs = 30;
  double get bodySubtitleFs => _bodySubtitleFs;
  set bodySubtitleFs(double val) {
    _bodySubtitleFs = val;
    notifyListeners();
  }

  //legal items
  double _weJustFs = 30;
  double get weJustFs => _weJustFs;
  set weJustFs(double val) {
    _weJustFs = val;
    notifyListeners();
  }

  double _textItemFs = 30;
  double get textItemFs => _textItemFs;
  set textItemFs(double val) {
    _textItemFs = val;
    notifyListeners();
  }

  double _iconItemS = 30;
  double get iconItemS => _iconItemS;
  set iconItemS(double val) {
    _iconItemS = val;
    notifyListeners();
  }

}

final List<SingleChildWidget> providers = [
  ChangeNotifierProvider(create: ( _ ) => ResDesVars()),
  ChangeNotifierProvider(create: ( _ ) => BreakPoints())
];


class BreakPoints with ChangeNotifier {

  static void contextWidthScreen (BuildContext _, double wS ) {
    var p = Provider.of<ResDesVars>( _, listen: false);
    if( wS <= 280 ) {
      p.headerMargin = 18;
      p.logoSize = 25;
      p.logoFs = 15;

      p.overviewFs = 17;
      p.textButtonFs = 15;
      // p.homeBodyMargin =

      p.footerFs = 7;
      p.footerMargin = 10;
      p.footerIconS = 12;
      p.footerHeight = 42;

      p.bodyTitleFs = 18;
      p.bodySubtitleFs = 13;

      p.weJustFs = 16;
      p.textItemFs = 8.5;
      p.iconItemS = 14;
    
    } else if(wS > 280 && wS <= 320) {
      p.headerMargin = 20;
      p.logoSize = 27;
      p.logoFs = 15;

      p.overviewFs = 18.5;
      p.textButtonFs = 16;

      p.footerFs = 8;
      p.footerMargin = 10;
      p.footerIconS = 12;
      p.footerHeight = 45;

      p.bodyTitleFs = 19;
      p.bodySubtitleFs = 13;
      
      p.weJustFs = 16;
      p.textItemFs = 8.7;
      p.iconItemS = 14;

    } else if(wS > 320 && wS <= 380) {
      p.headerMargin = 15;
      p.logoSize = 27;
      p.logoFs = 18;

      p.overviewFs = 20;
      p.textButtonFs = 18;

      p.footerFs = 9.5;
      p.footerMargin = 12;
      p.footerIconS = 13;
      p.footerHeight = 50;

      p.bodyTitleFs = 20;
      p.bodySubtitleFs = 15;

      p.weJustFs = 17;
      p.textItemFs = 10;
      p.iconItemS = 15;
    } else if(wS > 380 && wS <= 420) {
      p.headerMargin = 29;
      p.logoSize = 31;
      p.logoFs = 22;

      p.overviewFs = 24;
      p.textButtonFs = 20;

      p.footerFs = 11;
      p.footerMargin = 13;
      p.footerIconS = 14;
      p.footerHeight = 55;

      p.bodyTitleFs = 21;
      p.bodySubtitleFs = 16;

      p.weJustFs = 18;
      p.textItemFs = 11;
      p.iconItemS = 15;
    } else if(wS > 420 && wS <= 500) {
      p.headerMargin = 32;
      p.logoSize = 33;
      p.logoFs = 24;

      p.overviewFs = 26;
      p.textButtonFs = 22;

      p.footerFs = 12;
      p.footerMargin = 14;
      p.footerIconS = 15;
      p.footerHeight = 60;

      p.bodyTitleFs = 22;
      p.bodySubtitleFs = 17;

      p.weJustFs = 19;
      p.textItemFs = 12;
      p.iconItemS = 16;
    } else if(wS > 500 && wS <= 550) {
      p.headerMargin = 35;
      p.logoSize = 35;
      p.logoFs = 30;

      p.overviewFs = 29;
      p.textButtonFs = 24;

      p.footerFs = 13;
      p.footerMargin = 15;
      p.footerIconS = 17;
      p.footerHeight = 62;

      p.bodyTitleFs = 24;
      p.bodySubtitleFs = 19;

      p.weJustFs = 21;
      p.textItemFs = 13;
      p.iconItemS = 18;
    } else if(wS > 550 && wS <= 600) {
      p.overviewFs = 34;
      p.textButtonFs = 27;

      p.footerFs = 13;
      p.footerMargin = 20;
      p.footerIconS = 17;
      p.footerHeight = 62;

      p.bodyTitleFs = 26;
      p.bodySubtitleFs = 20;

      p.weJustFs = 26;
      p.textItemFs = 14;
      p.iconItemS = 18;
    } else if(wS > 600 && wS <= 650) {
      p.headerMargin = 38;
      p.logoSize = 37;
      p.logoFs = 33;

      p.overviewFs = 35;
      p.textButtonFs = 28;
      p.footerMargin = 22;

      p.footerFs = 14;
      p.footerMargin = 20;
      p.footerIconS = 18;
      p.footerHeight = 62;

      p.bodyTitleFs = 27;
      p.bodySubtitleFs = 21;

      p.weJustFs = 29;
      p.textItemFs = 15;
      p.iconItemS = 19;
    } else if(wS > 650 && wS <= 700) {
      p.headerMargin = 41;
      p.logoSize = 39;
      p.logoFs = 36;

      p.overviewFs = 20;
      p.textButtonFs = 15;

      p.footerFs = 14;
      p.footerMargin = 20;
      p.footerIconS = 19;
      p.footerHeight = 62;

      p.bodyTitleFs = 28;
      p.bodySubtitleFs = 22;

      p.weJustFs = 39;
      p.textItemFs = 16;
      p.iconItemS = 19;
    } else if(wS > 700 && wS <= 750) {
      p.overviewFs = 21;
      p.textButtonFs = 16;

      p.footerFs = 14;
      p.footerMargin = 20;
      p.footerIconS = 20;
      p.footerHeight = 62;

      p.bodyTitleFs = 29;
      p.bodySubtitleFs = 23;

      p.weJustFs = 40;
      p.textItemFs = 17;
      p.iconItemS = 20;
    } else if(wS > 750 && wS <= 800) {
      p.overviewFs = 22;
      p.textButtonFs = 17;

      p.footerFs = 14;
      p.footerMargin = 20;
      p.footerIconS = 21;
      p.footerHeight = 62;

      p.bodyTitleFs = 30;
      p.bodySubtitleFs = 24;

      p.weJustFs = 41;
      p.textItemFs = 18;
      p.iconItemS = 21;
    } else if(wS > 800 && wS <= 900) {
      p.overviewFs = 24;
      p.textButtonFs = 18;

      p.footerFs = 14;
      p.footerMargin = 20;
      p.footerIconS = 23;
      p.footerHeight = 62;

      p.bodyTitleFs = 34;
      p.bodySubtitleFs = 25;

      p.weJustFs = 42;
      p.textItemFs = 19;
      p.iconItemS = 22;
    } else if(wS > 900 && wS <= 1000) {
      p.logoSize = 42;

      p.overviewFs = 29;
      p.textButtonFs = 23;

      p.footerFs = 15;
      p.footerMargin = 23;
      p.footerIconS = 24;
      p.footerHeight = 63;

      p.bodyTitleFs = 35;
      p.bodySubtitleFs = 25;

      p.weJustFs = 43;
      p.textItemFs = 20;
      p.iconItemS = 22;
    } else if(wS > 1000 && wS <= 1200) {
      p.headerMargin = 50;
      p.logoSize = 42;
      p.logoFs = 40;

      p.overviewFs = 32;
      p.textButtonFs = 25;

      p.footerFs = 15;
      p.footerMargin = 20;
      p.footerIconS = 27;
      p.footerHeight = 62;

      p.bodyTitleFs = 37;
      p.bodySubtitleFs = 26;

      p.weJustFs = 44;
      p.textItemFs = 21;
      p.iconItemS = 23;
    } else {
      p.headerMargin = 50;
      p.logoSize = 43;
      p.logoFs = 43;

      p.overviewFs = 34;
      p.textButtonFs = 28;

      p.footerFs = 15;
      p.footerMargin = 25;
      p.footerIconS = 30;
      p.footerHeight = 70;

      p.bodyTitleFs = 38;
      p.bodySubtitleFs = 27;

      p.weJustFs = 46;
      p.textItemFs = 22;
      p.iconItemS = 24;
    }
  }
}