import 'package:flutter_test/flutter_test.dart';
import 'package:grokk_flutter_ci/src/util/peak_element.dart';

void main() {
  test('findPeak returns 2 for [1, 3, 20, 6, 1, 2]', () {
    var lst = <int>[1, 3, 20, 6, 1, 2];
    expect(findPeak(lst, lst.length), equals(2));
  });

  test('findPeak returns 3 for [1, 3, 20, 32, 1, 2]', () {
    var lst = <int>[1, 3, 20, 32, 1, 2];
    expect(findPeak(lst, lst.length), equals(3));
  });

  test('findPeak returns 2 for [321, 4353, 22320, 232, 23, 223]', () {
    var lst = <int>[321, 4353, 22320, 232, 23, 223];
    expect(findPeak(lst, lst.length), equals(2));
  });

  test('findPeak returns 2 for [121, 54, 2100, 36, 155, 90]', () {
    var lst = <int>[121, 54, 2100, 36, 155, 90];
    expect(findPeak(lst, lst.length), equals(2));
  });

  test('findPeak returns 2 for [5, 10, 20, 15]', () {
    var lst = <int>[5, 10, 20, 15];
    expect(findPeak(lst, lst.length), equals(2));
  });

  test('findPeak returns 1 for [10, 20, 15, 2, 23, 90, 67]', () {
    var lst = <int>[10, 20, 15, 2, 23, 90, 67];
    expect(findPeak(lst, lst.length), equals(1));
  });
}
