import 'package:flutter/cupertino.dart';
import 'package:flutter_juejin_demo/pages/home_tab.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'JueJin',
      home: HomeWindow(),
    );
  }
}