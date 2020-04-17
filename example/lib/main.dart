import 'package:flutter/material.dart';
import 'package:chat_bubble/chat_bubble.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    bool reverse = true;
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: SingleChildScrollView(
                  child: Column(
            // Column is also a layout widget. It takes a list of children and
            // arranges them vertically. By default, it sizes itself to fit its
            // children horizontally, and tries to be as tall as its parent.
            //
            // Invoke "debug painting" (press "p" in the console, choose the
            // "Toggle Debug Paint" action from the Flutter Inspector in Android
            // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
            // to see the wireframe for each widget.
            //
            // Column has various properties to control how it sizes itself and
            // how it positions its children. Here we use mainAxisAlignment to
            // center the children vertically; the main axis here is the vertical
            // axis because Columns are vertical (the cross axis would be
            // horizontal).
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ChatBubble(
                direction: ChatBubbleNipDirection.LEFT,
                child: Container(
                  height: 45,
                  color: Color(0xffdddddd),
                  child: Center(
                    child: Text('收到文本'),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ChatBubble(
                direction: ChatBubbleNipDirection.RIGHT,
                child: Container(
                  width: 230,
                  height: 45,
                  color: Color(0xffa5ed7e),
                  child: Center(
                    child: Text('发送文本'),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ChatBubble(
                shadows: <Shadow>[
                  Shadow(
                    color: Colors.red,
                    offset: Offset(0, 0),
                    blurRadius: 5,
                  ),
                ],
                direction: ChatBubbleNipDirection.RIGHT,
                child: Container(
                  width: 230,
                  height: 45,
                  color: Color(0xffa5ed7e),
                  child: Center(
                    child: Text('单个阴影'),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              
              ChatBubble(
                shadows: <Shadow>[
                  Shadow(
                    color: Colors.red,
                    offset: Offset(-5, -5),
                    blurRadius: 5,
                  ),
                  Shadow(
                    color: Colors.blue,
                    offset: Offset(5, 5),
                    blurRadius: 5,
                  )
                ],
                direction: ChatBubbleNipDirection.RIGHT,
                child: Container(
                  width: 230,
                  height: 45,
                  color: Color(0xffa5ed7e),
                  child: Center(
                    child: Text('多个阴影'),
                  ),
                ),
              ),SizedBox(
                height: 30,
              ),
              ChatBubble(
                shadows: <Shadow>[
                  Shadow(
                    color: Colors.red,
                    offset: Offset(0, 0),
                    blurRadius: 5,
                  )
                ],
                direction: reverse
                    ? ChatBubbleNipDirection.RIGHT
                    : ChatBubbleNipDirection.LEFT,
                child: Container(
                  width: 300,
                  color: Colors.grey.withOpacity(0.8),
                  child: Image.network(
                    'https://pics7.baidu.com/feed/b21c8701a18b87d6627be358ca93ae3e1e30fdda.jpeg?token=a6434449ed9bc79aa3c414a52e4a4e1b',
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ChatBubble(
                nipLength: 30.0,
                nipRadius: 10.0,
                nipTop: 80.0,
                shadows: <Shadow>[
                  Shadow(
                    color: Colors.red,
                    offset: Offset(0, 0),
                    blurRadius: 5,
                  )
                ],
                direction: reverse
                    ? ChatBubbleNipDirection.RIGHT
                    : ChatBubbleNipDirection.LEFT,
                child: Container(
                  width: 300,
                  color: Colors.grey.withOpacity(0.8),
                  child: Image.network(
                    'https://pics7.baidu.com/feed/b21c8701a18b87d6627be358ca93ae3e1e30fdda.jpeg?token=a6434449ed9bc79aa3c414a52e4a4e1b',
                  ),
                ),
              ),
              
              SizedBox(
                height: 30,
              ),
              ChatBubble(
                shadows: <Shadow>[
                  Shadow(
                    color: Colors.grey.withOpacity(0.8),
                    offset: Offset(-1.0, -1.0),
                    blurRadius: 0.1,
                  ),
                  Shadow(
                    color: Colors.grey.withOpacity(0.8),
                    offset: Offset(1.0, 1.0),
                    blurRadius: 0.4,
                  )
                ],
                direction: ChatBubbleNipDirection.LEFT,
                child: Container(
                  width: 200,
                  color: Colors.grey.withOpacity(0.8),
                  child: Image.network(
                    'https://pics7.baidu.com/feed/b21c8701a18b87d6627be358ca93ae3e1e30fdda.jpeg?token=a6434449ed9bc79aa3c414a52e4a4e1b',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
