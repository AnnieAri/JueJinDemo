import 'dart:math';

class TopicModel {
  final String portrait;
  final String user_name;
  final String category;
  final String title;
  final String content;
  final int praiseCount;
  final int commentCount;

  const TopicModel({this.portrait = "", this.user_name = "", this.category = "", this.title = "",
      this.content = "", this.praiseCount = 99, this.commentCount = 0});

}