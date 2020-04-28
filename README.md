# chat_bubble

A chat bubble widget, similar to WeChat, You can customize the orientation and the size of the rounded corners, as well as the rounded corners and position of the triangle..

类似微信一样的聊天气泡，可以用作文字、图片等等。 通常文字类的聊天气泡可以使用定位的纯色的小矩形旋转，但把它应用在图片上面就不对了。这个插件可以在图片左右侧切割出一个气泡小三角。

## Depend on it
Add this to your package's pubspec.yaml file:
```
dependencies:
  chat_bubble: any
```

## Usage
```
import 'package:chat_bubble/chat_bubble.dart';


ChatBubble(
  // 阴影
  shadows: <Shadow>[
    Shadow(
      color: Colors.grey,
      offset: Offset(-1.0, -1.0),
      blurRadius: 0.1,
    ),
    Shadow(
      color: Colors.grey,
      offset: Offset(1.0, 1.0),
      blurRadius: 0.4,
    )
  ],
  // 小三角的方向
  direction: reverse ? ChatBubbleNipDirection.RIGHT:  ChatBubbleNipDirection.LEFT,
  // 小三角的边长
  // nipLength: 30.0,
  // 小三角的圆角
  // nipRadius: 10.0,
  // 小三角到顶部的距离
  // nipTop: 80.0,
  child: Container(
    color: Colors.grey,
    child: img,
  ),
)
```

## Screenshots

![截图](https://github.com/mrTangYun/flutter_chat_bubble/raw/master/screenshots/Screenshot_1587114817.png)

![说明](https://github.com/mrTangYun/flutter_chat_bubble/raw/master/screenshots/Screenshot_1587095359.png)
