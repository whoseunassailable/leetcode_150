import 'dart:io';

class Solution {
  removeElement(List<int> nums, int val) {
    nums.removeWhere((element) => element == val);
    return '${nums.length}, nums = $nums';
  }
}

void main() {
  final solution = Solution();
  print(solution.removeElement([3, 2, 2, 3], 2));
}
