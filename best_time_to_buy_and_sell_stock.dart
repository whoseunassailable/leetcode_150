import 'dart:math';

class Solution {
  int maxProfit(List<int> prices) {
    int maxValue = 0;
    for (int i = 0; i < prices.length; i++) {
      int currentIndex = i;
      int nextIndex = currentIndex + 1;
      if (nextIndex < prices.length) {
        int currentValue = prices[currentIndex];
        for (int j = nextIndex; j < prices.length; j++) {
          int nextvalue = prices[j];
          int difference = nextvalue - currentValue;
          if (difference > 0) {
            if (maxValue < difference) {
              maxValue = difference;
            }
          }
        }
      }
    }
    return maxValue;
  }
}

void main() {
  final solution = Solution();
  print(solution.maxProfit([7, 1, 5, 3, 6, 4]));
}


// Note : This is my personal solution but this will fail 