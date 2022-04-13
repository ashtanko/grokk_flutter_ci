import 'package:flutter_test/flutter_test.dart';
import 'package:grokk_flutter_ci/src/util/linked_list.dart';

void main() {
  test('.add is adding elements in order', () {
    var linkedList = LinkedList<double>()
      ..add(1)
      ..add(2)
      ..add(3);

    expect(linkedList, equals([1, 2, 3]));
  });

  test('.remove is removing all elements with given value', () {
    var linkedList = LinkedList<double>()
      ..add(1)
      ..add(2)
      ..add(3)
      ..add(2)
      ..remove(2);

    expect(linkedList, equals([1, 3]));
  });

  test('.remove on empty list do nothing', () {
    var linkedList = LinkedList<double>()..remove(2);
    expect(linkedList, isEmpty);
  });

  test('.push is appending first element', () {
    var linkedList = LinkedList<double>()..push(1);
    expect(linkedList, equals([1]));

    linkedList.push(2);
    expect(linkedList, equals([2, 1]));

    linkedList.push(3);
    expect(linkedList, equals([3, 2, 1]));
  });

  test('.pop is returning and removing first element', () {
    var linkedList = LinkedList<double>()
      ..add(1)
      ..add(2)
      ..add(3);

    expect(linkedList.pop(), equals(1));
    expect(linkedList, equals([2, 3]));

    expect(linkedList.pop(), equals(2));
    expect(linkedList, equals([3]));

    expect(linkedList.pop(), equals(3));
    expect(linkedList, equals([]));
  });

  test('.pop is returning null when list is empty', () {
    var linkedList = LinkedList<double>();

    expect(linkedList.pop(), isNull);
  });
}
