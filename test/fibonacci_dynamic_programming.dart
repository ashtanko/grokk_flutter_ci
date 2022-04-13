import 'package:flutter_test/flutter_test.dart';
import 'package:grokk_flutter_ci/src/util/fibonacci_dynamic_programming.dart';

void main() {
  dp[0] = 0;
  dp[1] = 1;

  test('getFib 0 equals 0', () {
    expect(getFib(0), equals(0));
  });

  test('getFib 1 equals 1', () {
    expect(getFib(1), equals(1));
  });

  test('getFib 5 equals 5', () {
    expect(getFib(5), equals(5));
  });

  test('getFib(n) equals getFib(n - 1) + getFib(n - 2)', () {
    expect(getFib(7), equals(getFib(6) + getFib(5)));
    expect(getFib(14), equals(getFib(13) + getFib(12)));
  });
}
