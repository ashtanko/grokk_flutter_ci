import 'dart:io';

List<List<int>> getValidPos(List<int> position, int n) {
  final i = position[0];
  final j = position[1];
  final positions = [
    [i + 1, j + 2],
    [i - 1, j + 2],
    [i + 1, j - 2],
    [i - 1, j - 2],
    [i + 2, j + 1],
    [i + 2, j - 1],
    [i - 2, j + 1],
    [i - 2, j - 1],
  ];

  final permissiblePositions = <List<int>>[];
  for (final currPosition in positions) {
    final iTest = currPosition[0];
    final jTest = currPosition[1];
    if (0 <= iTest && iTest < n && 0 <= jTest && jTest < n) {
      permissiblePositions.add(currPosition);
    }
  }
  return permissiblePositions;
}

bool isComplete(List<List<int>> board) {
  for (final row in board) {
    for (final elem in row) {
      if (elem == 0) {
        return false;
      }
    }
  }
  return true;
}

bool openKnightTourHelper(List<List<int>> board, List<int> pos, int curr) {
  if (isComplete(board)) {
    return true;
  }

  for (final position in getValidPos(pos, board.length)) {
    final i = position[0];
    final j = position[1];

    if (board[i][j] == 0) {
      board[i][j] = curr + 1;
      if (openKnightTourHelper(board, position, curr + 1)) {
        return true;
      }
      board[i][j] = 0;
    }
  }
  return false;
}

List<List<int>> openKnightTour(int n) {
  // board creation
  final board = <List<int>>[];
  for (var i = 0; i < n; i++) {
    final row = <int>[];
    for (var j = 0; j < n; j++) {
      row.add(0);
    }
    board.add(row);
  }
  // open knight tour with backtracking
  for (var i = 0; i < n; i++) {
    for (var j = 0; j < n; j++) {
      board[i][j] = 1;
      if (openKnightTourHelper(board, [i, j], 1)) {
        return board;
      }
      board[i][j] = 0;
    }
  }
  return board;
}

void printBoard(List<List<int>> board) {
  for (final row in board) {
    for (final elem in row) {
      stdout.write(elem);
    }
    stdout.write('\n');
  }
  stdout.write('\n');
}
