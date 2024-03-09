void main() {
  List<int> nums = [0, 0, 1, 1, 1, 1, 2, 2, 3];
  final solution = Solution();
  print(solution.removeDuplicates(nums));
}

class Solution {
  int removeDuplicates(List<int> nums) {
    int duplicateValue = 1;
    for (int i = 0; i < nums.length; i++) {
      int currentIndex = i;
      int nextIndex = i + 1;
      print('Comparing index value of $currentIndex with $nextIndex');

      if (nextIndex < nums.length) {
        int currentValue = nums[currentIndex];
        int nextValue = nums[nextIndex];
        print('nums = [$currentValue, $nextValue]');

        if (currentValue == nextValue) {
          duplicateValue++;
          if (duplicateValue > 2) {
            for (int j = i + 1; j < nums.length; j++) {
              if (nums[j] == currentValue) {
                print('Value removed at index $j');
                nums.removeAt(j);
                i = -1;
                duplicateValue = 1;
                break;
              }
            }
          }
        } else if (currentValue != nextValue) {
          duplicateValue = 1;
        }
      }
      print('duplicateValue : $duplicateValue');
    }
    print('nums : $nums');
    return nums.length;
  }
}
