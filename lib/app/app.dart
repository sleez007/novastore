import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:novastore/ui/home.dart';

class NovaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //lock orientation to only potrait
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return CupertinoApp(
      title: 'Nova Store',
      home: Home(),
    );
  }
}
