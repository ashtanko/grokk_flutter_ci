import 'package:flutter_test/flutter_test.dart';
import 'package:grokk_flutter_ci/src/util/open_knight_tour.dart';

void main() {
  test(('getValidPos: testCase #1'), () {
    expect(
        getValidPos([1, 3], 4),
        equals([
          [2, 1],
          [0, 1],
          [3, 2]
        ]));
  });

  test(('getValidPos: testCase #3'), () {
    expect(
        getValidPos([1, 2], 5),
        equals([
          [2, 4],
          [0, 4],
          [2, 0],
          [0, 0],
          [3, 3],
          [3, 1]
        ]));
  });

  test(('isComplete: testCase #1'), () {
    expect(
        isComplete([
          [1]
        ]),
        equals(true));
  });

  test(('isComplete: testCase #2'), () {
    expect(
        isComplete([
          [1, 2],
          [3, 0]
        ]),
        equals(false));
  });

  test(('openKnightTour: testCase #1'), () {
    expect(
        openKnightTour(1),
        equals([
          [1]
        ]));
  });

  test(('openKnightTour: testCase #2'), () {
    expect(
        openKnightTour(2),
        equals([
          [0, 0],
          [0, 0]
        ]));
  });

  test(('openKnightTour: testCase #3'), () {
    expect(
        openKnightTour(5),
        equals([
          [1, 14, 19, 8, 25],
          [6, 9, 2, 13, 18],
          [15, 20, 7, 24, 3],
          [10, 5, 22, 17, 12],
          [21, 16, 11, 4, 23]
        ]));
  });
}
