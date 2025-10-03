import 'package:collection/collection.dart';

class Solution {
  int trapRainWater(List<List<int>> heightMap) {
    int m = heightMap.length;
    int n = heightMap[0].length;
    if (m <= 2 || n <= 2) return 0;

    List<List<bool>> visited = List.generate(m, (_) => List.filled(n, false));
    HeapPriorityQueue<List<int>> heap = HeapPriorityQueue((a, b) => a[2] - b[2]);

    for (int i = 0; i < m; i++) {
      for (int j = 0; j < n; j++) {
        if (i == 0 || j == 0 || i == m - 1 || j == n - 1) {
          heap.add([i, j, heightMap[i][j]]);
          visited[i][j] = true;
        }
      }
    }

    List<List<int>> directions = [
      [0, 1],
      [1, 0],
      [0, -1],
      [-1, 0]
    ];
    int waterTrapped = 0;

    while (heap.isNotEmpty) {
      List<int> cell = heap.removeFirst();
      int x = cell[0], y = cell[1], h = cell[2];

      for (List<int> dir in directions) {
        int nx = x + dir[0], ny = y + dir[1];

        if (nx >= 0 && ny >= 0 && nx < m && ny < n && !visited[nx][ny]) {
          waterTrapped += (h > heightMap[nx][ny]) ? h - heightMap[nx][ny] : 0;
          heap.add([nx, ny, h > heightMap[nx][ny] ? h : heightMap[nx][ny]]);
          visited[nx][ny] = true;
        }
      }
    }

    return waterTrapped;
  }
}