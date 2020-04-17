# chat_bubble

A new Flutter package project.

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
