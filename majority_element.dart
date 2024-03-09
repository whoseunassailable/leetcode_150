import 'dart:math';

class Solution {
  int majorityElement(List<int> nums) {
    int maxLength = 1;
    Map<int, int> keyValueElementToValueCount = {};
    int currentIndex = 0;
    int nextIndex = 1;
    for (int i = 0; i < nums.length; i++) {
      int currentValue = nums[currentIndex];
      for (int j = nextIndex; j < nums.length; j++) {
        if (currentValue == nums[j]) {
          maxLength++;
        }
      }
      keyValueElementToValueCount.addAll({currentValue: maxLength});
      maxLength = 1;
      nums.removeWhere((element) => element == currentValue);
    }
    int largestValue = keyValueElementToValueCount.values.reduce(max);

    int largestValueElement = 0;
    for (MapEntry<int, int> entry in keyValueElementToValueCount.entries) {
      if (entry.value == largestValue) {
        largestValueElement = entry.key;
      }
    }
    return largestValueElement;
  }
}

void main() {
  final solution = Solution();
  print(solution.majorityElement([2, 2, 1, 1, 1, 2, 2, 4, 4, 2, 3]));
}
