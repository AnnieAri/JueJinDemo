import 'dart:math';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_juejin_demo/models/topic_model.dart';
import 'package:flutter_juejin_demo/utils/constants.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
//    _pageController.
  }

  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQueryData = MediaQuery.of(context);
    final double statusBarHeight = mediaQueryData.padding.top;
    final double screenHeight = mediaQueryData.size.height;
    final double tabBarHeight = mediaQueryData.padding.bottom;

    List<Widget> items = [];
    for(int i =0;i<4;i++) {
      items.add(SizedBox(width: 10,));
      items.add(Text("xx$i"));
    }

    Widget scrollBar =  SingleChildScrollView(
      child: Container(
//        color: Colors.white,
        height: statusBarHeight + 44,
        child: Row(
          children: items,
        ),
      ),
      scrollDirection: Axis.horizontal,
    );
    return CupertinoPageScaffold(
        child: Stack(
      children: <Widget>[
        Positioned(
          left: 0,
          right: 0,
          bottom: tabBarHeight,
          top: statusBarHeight ,
          child: _pageView(),
        ),
        Positioned(
          left: 0,
          right: 0,
          top: 0,
          height: statusBarHeight+44,
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 3,sigmaY: 3),
            child: Container(
              color: Colors.white.withOpacity(0.7),
            ),
          ),
        ),
        Positioned(
          left: 0,
//          right: 0,
          width: 100,
          top: statusBarHeight,
          height: 44,
          child: scrollBar,
        ),


      ],
    ));
  }

  Widget _pageView() {
    return PageView.builder(
      itemBuilder: (BuildContext context, int index) {
//            if(index == 1) {
//
//            }else if (index ==2) {
//
//            }else{
        return TopicListView();
//            }
      },
      controller: _pageController,
      itemCount: 3,
    );
  }
}

class TopicListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
//      padding: EdgeInsets.all(0),
//      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        return TopicItem(
          model: topic_models[index],
        );
      },
      itemCount: topic_models.length,
    );
  }
}

class TopicItem extends StatelessWidget {
  final TopicModel model;

  const TopicItem({Key key, @required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10, bottom: 10),
      decoration: BoxDecoration(
          border:
              Border(bottom: BorderSide(color: Colors.grey[200], width: 10))),
//      height: 40,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _userInfoWidget(context),
            _contentWidget(context),
            _toolsWidget(context),
          ],
        ),
      ),
    );
  }

  Widget _userInfoWidget(BuildContext context) {
    return Container(
      child: Stack(
        textDirection: TextDirection.ltr,
        alignment: Alignment.centerLeft,
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    image: DecorationImage(
                      image: AssetImage(model.portrait),
                    )),
                width: 30,
                height: 30,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                model.user_name,
                style: AppStyles.topic_user_name_style,
              ),
            ],
          ),
          Positioned(
            right: 10,
            child: Text(
              model.category,
              style: AppStyles.topic_category_style,
            ),
          )
        ],
      ),
    );
  }

  Widget _contentWidget(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            model.title,
            style: AppStyles.topic_title_style,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            model.content,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: AppStyles.topic_content_style,
          ),
        ],
      ),
    );
  }

  Widget _toolsWidget(BuildContext context) {
    int count = Random().nextInt(100); //model.praiseCount;
    String praisCount = count == 0 ? "" : "$count";
    count = Random().nextInt(100);
    String commentCount = count == 0 ? "" : "$count";
    return Container(
      margin: EdgeInsets.only(top: 10, bottom: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          GestureDetector(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    "images/praise.png",
                    width: 15,
                    height: 15,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    praisCount,
                    style: AppStyles.topic_tools_style,
                  ),
                ],
              ),
              onTap: () {
                print("点赞");
              }),
          SizedBox(
            width: 20,
          ),
          GestureDetector(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    "images/comment.png",
                    width: 15,
                    height: 15,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    commentCount,
                    style: AppStyles.topic_tools_style,
                  ),
                ],
              ),
              onTap: () {
                print("评论");
              }),
        ],
      ),
    );
  }
}

//
