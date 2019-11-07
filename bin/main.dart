// Challenge
// Implement Bubble Sort with list of integers
import 'dart:math';

List bubbleSort(List sortThis) {
  int tempA;
  int tempB;
  int count = 1;
  int length = sortThis.length;
  while (count != 0) {
    count = 0;
    for (int i = 0; i < length - 1; i++) {
      tempA = sortThis[i];
      tempB = sortThis[i + 1];
      if (tempA > tempB) {
        //swap these two
        sortThis[i] = tempB;
        sortThis[i + 1] = tempA;
        //increase count as well so you kno when to end main the loop
        count++;
      }
    }
    length--;
  }

  return sortThis;
}

main() {
//  print(bubbleSort([9, 8, 1, 6, 2, 4, 3, 2, 1]));
  List randomList = List.generate(100000, (i) => Random().nextInt(10));
  DateTime before = DateTime.now();
  bubbleSort(randomList);
  print(DateTime.now().difference(before).inMilliseconds);
}
