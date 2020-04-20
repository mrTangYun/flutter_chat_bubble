# chat_bubble

A chat bubble widget, similar to WeChat, You can customize the orientation and the size of the rounded corners, as well as the rounded corners and position of the triangle..

类似微信一样的聊天气泡，可以用作文字、图片等等

## Usage
```
import 'package:chat_bubble/chat_bubble.dart';


ChatBubble(
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
  direction: reverse ? ChatBubbleNipDirection.RIGHT:  ChatBubbleNipDirection.LEFT,
  child: Container(
    color: Colors.grey,
    child: img,
  ),
)
```

## Screenshots

![截图](https://github.com/mrTangYun/flutter_chat_bubble/raw/master/screenshots/Screenshot_1587114817.png)

![说明](https://github.com/mrTangYun/flutter_chat_bubble/raw/master/screenshots/Screenshot_1587095359.png)
