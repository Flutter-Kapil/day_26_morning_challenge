import 'dart:math';

import 'main.dart';
import 'package:test/test.dart';

void main() {
  test("test case 1", () {
    expect(bubbleSort([3, 2, 1]), [1, 2, 3]);
    expect(bubbleSort([]), []);
    expect(bubbleSort([3, 2, 1, 3, 7, 9, 4]), [1, 2, 3, 3, 4, 7, 9]);
  });
}
