import 'package:flutter_test/flutter_test.dart';

import 'package:chat_bubble/chat_bubble.dart';
import 'package:flutter/material.dart';

void main() {
  test('adds one to input values', () {
     ChatBubble(
      child: Text('test')
    );
    // final calculator = Calculator();
    // expect(calculator.addOne(2), 3);
    // expect(calculator.addOne(-7), -6);
    // expect(calculator.addOne(0), 1);
    // expect(() => calculator.addOne(null), throwsNoSuchMethodError);
  });
}
