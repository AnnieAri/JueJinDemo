import 'package:flutter_juejin_demo/models/topic_model.dart';
import 'package:flutter/painting.dart';

class Constants {
  static const IconFontFamily = "CupertinoIcons";
  static const IconFontPackage = "fonts";
}
class AppStyles {
  static TextStyle topic_user_name_style = TextStyle(
      color: Color(0xFF4D4D4D),
      fontSize: 14
  );
  static TextStyle topic_category_style = TextStyle(
    color: Color(0xFF999999),
    fontSize: 18
  );
  static TextStyle topic_title_style = TextStyle(
    color: Color(0xFF000000),
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );
  static TextStyle topic_content_style = TextStyle(
      color: Color(0xFF4D4D4D),
      fontSize: 15
  );
  static TextStyle topic_tools_style = TextStyle(
      color: Color(0xFF777777),
      fontSize: 13,

  );
}


const List<TopicModel> topic_models = [
  TopicModel(user_name: "Ari Swift",portrait: "images/avatar/01.jpg",category: "Flutter",title: "Flutter, what are Widgets",content: """
  Understanding how an underlying technology works makes the difference between a good developer and a great one.

You can create custom layouts and special effects more easily when you know what works and what doesn’t; and knowing this will save you a few long nights at the keyboard.

The goal of this post is to introduce you to the world beyond the surface of flutter. We will take a look at different aspects of flutter and understand how it actually works.
  """),
  TopicModel(user_name: "ShaneAldendorff",portrait: "images/avatar/02.jpg",category: "Flutter",title: "Let’s get started",content: """
  You probably already know how to use the StatelessWidget & StatefulWidget. But those widgets only compose the other widgets. Laying out the widgets and rendering them happens elsewhere.

I highly recommend opening your favorite IDE and following along, seeing the structures in the actual code often creates those “aha” moments. In Intellij you can double tap shift and enter a class name to find it.
  """),
  TopicModel(user_name: "Tony Stark",portrait: "images/avatar/03.jpg",category: "Flutter",title: "The Opacity",content: """
  To get familiar with the basic concepts of how flutter works we will take a look at the Opacity widget and examine that. Because it’s a pretty basic widget, it makes a good example to follow along.

It only accepts one child. Therefore you can wrap any widget in an Opacity and change the way it’s displayed. Besides the child, there is only one parameter called opacity which is a value between 0.0 and 1.0. It controls the opacity (duh).
"""),
  TopicModel(user_name: "Doctor Strange",portrait: "images/avatar/04.jpg",category: "Flutter",title: "Flutter, what are Widgets",content: """
  Understanding how an underlying technology works makes the difference between a good developer and a great one.

You can create custom layouts and special effects more easily when you know what works and what doesn’t; and knowing this will save you a few long nights at the keyboard.

The goal of this post is to introduce you to the world beyond the surface of flutter. We will take a look at different aspects of flutter and understand how it actually works.
  """),
  TopicModel(user_name: "Captain America",portrait: "images/avatar/05.jpg",category: "Flutter",title: "The Widget",content: """
  The Opacity is a SingleChildRenderObjectWidget.

The hierarchy of extension class extensions goes like this:

Opacity → SingleChildRenderObjectWidget → RenderObjectWidget → Widget

In contrast, the StatelessWidget and StatefulWidget goes as follows:

StatelessWidget/StatefulWidget → Widget

The difference lies in the fact that the Stateless/StatefulWidget only compose widgets while the Opacity widget actually changes how the widget is drawn.
  """),
  TopicModel(user_name: "Thor",portrait: "images/avatar/06.jpg",category: "Flutter",title: "The Rendering",content: """
  But where does the rendering happen?

It’s inside the RenderObjects

As you might have guessed from the name, the RenderObject is responsible for a few things, including rendering.

The Opacity widget creates and updates a RenderObject with these methods.
"""),
  TopicModel(user_name: "Ari Swift",portrait: "images/avatar/01.jpg",category: "Flutter",title: "Flutter, what are Widgets",content: """
  Understanding how an underlying technology works makes the difference between a good developer and a great one.

You can create custom layouts and special effects more easily when you know what works and what doesn’t; and knowing this will save you a few long nights at the keyboard.

The goal of this post is to introduce you to the world beyond the surface of flutter. We will take a look at different aspects of flutter and understand how it actually works.
  """),
  TopicModel(user_name: "ShaneAldendorff",portrait: "images/avatar/02.jpg",category: "Flutter",title: "Let’s get started",content: """
  You probably already know how to use the StatelessWidget & StatefulWidget. But those widgets only compose the other widgets. Laying out the widgets and rendering them happens elsewhere.

I highly recommend opening your favorite IDE and following along, seeing the structures in the actual code often creates those “aha” moments. In Intellij you can double tap shift and enter a class name to find it.
  """),
  TopicModel(user_name: "Tony Stark",portrait: "images/avatar/03.jpg",category: "Flutter",title: "The Opacity",content: """
  To get familiar with the basic concepts of how flutter works we will take a look at the Opacity widget and examine that. Because it’s a pretty basic widget, it makes a good example to follow along.

It only accepts one child. Therefore you can wrap any widget in an Opacity and change the way it’s displayed. Besides the child, there is only one parameter called opacity which is a value between 0.0 and 1.0. It controls the opacity (duh).
"""),
  TopicModel(user_name: "Doctor Strange",portrait: "images/avatar/04.jpg",category: "Flutter",title: "Flutter, what are Widgets",content: """
  Understanding how an underlying technology works makes the difference between a good developer and a great one.

You can create custom layouts and special effects more easily when you know what works and what doesn’t; and knowing this will save you a few long nights at the keyboard.

The goal of this post is to introduce you to the world beyond the surface of flutter. We will take a look at different aspects of flutter and understand how it actually works.
  """),
  TopicModel(user_name: "Captain America",portrait: "images/avatar/05.jpg",category: "Flutter",title: "The Widget",content: """
  The Opacity is a SingleChildRenderObjectWidget.

The hierarchy of extension class extensions goes like this:

Opacity → SingleChildRenderObjectWidget → RenderObjectWidget → Widget

In contrast, the StatelessWidget and StatefulWidget goes as follows:

StatelessWidget/StatefulWidget → Widget

The difference lies in the fact that the Stateless/StatefulWidget only compose widgets while the Opacity widget actually changes how the widget is drawn.
  """),
  TopicModel(user_name: "Thor",portrait: "images/avatar/06.jpg",category: "Flutter",title: "The Rendering",content: """
  But where does the rendering happen?

It’s inside the RenderObjects

As you might have guessed from the name, the RenderObject is responsible for a few things, including rendering.

The Opacity widget creates and updates a RenderObject with these methods.
"""),
  TopicModel(user_name: "Ari Swift",portrait: "images/avatar/01.jpg",category: "Flutter",title: "Flutter, what are Widgets",content: """
  Understanding how an underlying technology works makes the difference between a good developer and a great one.

You can create custom layouts and special effects more easily when you know what works and what doesn’t; and knowing this will save you a few long nights at the keyboard.

The goal of this post is to introduce you to the world beyond the surface of flutter. We will take a look at different aspects of flutter and understand how it actually works.
  """),
  TopicModel(user_name: "ShaneAldendorff",portrait: "images/avatar/02.jpg",category: "Flutter",title: "Let’s get started",content: """
  You probably already know how to use the StatelessWidget & StatefulWidget. But those widgets only compose the other widgets. Laying out the widgets and rendering them happens elsewhere.

I highly recommend opening your favorite IDE and following along, seeing the structures in the actual code often creates those “aha” moments. In Intellij you can double tap shift and enter a class name to find it.
  """),
  TopicModel(user_name: "Tony Stark",portrait: "images/avatar/03.jpg",category: "Flutter",title: "The Opacity",content: """
  To get familiar with the basic concepts of how flutter works we will take a look at the Opacity widget and examine that. Because it’s a pretty basic widget, it makes a good example to follow along.

It only accepts one child. Therefore you can wrap any widget in an Opacity and change the way it’s displayed. Besides the child, there is only one parameter called opacity which is a value between 0.0 and 1.0. It controls the opacity (duh).
"""),
  TopicModel(user_name: "Doctor Strange",portrait: "images/avatar/04.jpg",category: "Flutter",title: "Flutter, what are Widgets",content: """
  Understanding how an underlying technology works makes the difference between a good developer and a great one.

You can create custom layouts and special effects more easily when you know what works and what doesn’t; and knowing this will save you a few long nights at the keyboard.

The goal of this post is to introduce you to the world beyond the surface of flutter. We will take a look at different aspects of flutter and understand how it actually works.
  """),
  TopicModel(user_name: "Captain America",portrait: "images/avatar/05.jpg",category: "Flutter",title: "The Widget",content: """
  The Opacity is a SingleChildRenderObjectWidget.

The hierarchy of extension class extensions goes like this:

Opacity → SingleChildRenderObjectWidget → RenderObjectWidget → Widget

In contrast, the StatelessWidget and StatefulWidget goes as follows:

StatelessWidget/StatefulWidget → Widget

The difference lies in the fact that the Stateless/StatefulWidget only compose widgets while the Opacity widget actually changes how the widget is drawn.
  """),
  TopicModel(user_name: "Thor",portrait: "images/avatar/06.jpg",category: "Flutter",title: "The Rendering",content: """
  But where does the rendering happen?

It’s inside the RenderObjects

As you might have guessed from the name, the RenderObject is responsible for a few things, including rendering.

The Opacity widget creates and updates a RenderObject with these methods.
"""),

];