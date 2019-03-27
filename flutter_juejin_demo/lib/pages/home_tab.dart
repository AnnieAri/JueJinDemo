import 'package:flutter/cupertino.dart';
import 'package:flutter_juejin_demo/pages/home_page.dart';
import 'package:flutter_juejin_demo/utils/constants.dart';

class HomeWindow extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomeWindowState();
  }

}
class _HomeWindowState extends State<HomeWindow> {
  final List<BottomNavigationBarItem> items = [
    BottomNavigationBarItem(
        title: Text("首页"),
        icon: Icon(
          IconData(
            0xe608,
            fontFamily:Constants.IconFontFamily,
          ),
        ),
        activeIcon: Icon(
          IconData(
            0xe603,
            fontFamily: Constants.IconFontFamily,
          ),
        )
    ),
    BottomNavigationBarItem(
        title: Text("动态"),
        icon: Icon(
          IconData(
            0xe601,
            fontFamily:Constants.IconFontFamily,
          ),
        ),
        activeIcon: Icon(
          IconData(
            0xe602,
            fontFamily: Constants.IconFontFamily,
          ),
        )
    ),
    BottomNavigationBarItem(
        title: Text("发现"),
        icon: Icon(
          IconData(
            0xe600,
            fontFamily:Constants.IconFontFamily,
          ),
        ),
        activeIcon: Icon(
          IconData(
            0xe604,
            fontFamily: Constants.IconFontFamily,
          ),
        )
    ),
    BottomNavigationBarItem(
        title: Text("小册"),
        icon: Icon(
          IconData(
            0xe607,
            fontFamily:Constants.IconFontFamily,
          ),
        ),
        activeIcon: Icon(
          IconData(
            0xe630,
            fontFamily: Constants.IconFontFamily,
          ),
        )
    ),
    BottomNavigationBarItem(
        title: Text("我"),
        icon: Icon(
          IconData(
            0xe607,
            fontFamily:Constants.IconFontFamily,
          ),
        ),
        activeIcon: Icon(
          IconData(
            0xe630,
            fontFamily: Constants.IconFontFamily,
          ),
        )
    ),
  ];
  final List<Widget> widetList = [
    HomePage(),
    HomePage(),
    HomePage(),
    HomePage(),
    HomePage(),
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        iconSize: 22,
        items: items,
        onTap: (index) {
          print("点击了$index 个item");
        },
      ),
      tabBuilder: (BuildContext context, int index) {
        return widetList[index];
      },
    );
  }
}