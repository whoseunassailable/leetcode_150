class Solution {
  int removeDuplicates(List<int> nums) {
    Set<int> uniqueElements = {};
    for (int i = 0; i < nums.length; i++) {
      uniqueElements.add(nums[i]);
    }
    nums.removeRange(0, nums.length);
    nums.addAll(uniqueElements);
    return nums.length;
  }
}

void main() {
  List<int> nums = [0, 0, 1, 1, 1, 2, 2, 3, 4];
  final solution = Solution();
  print(solution.removeDuplicates(nums));
}
