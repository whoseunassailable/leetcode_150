import 'dart:io';

class Solution {
  void main() {
    print(merge([1, 2, 3, 0, 0, 0], 3, [2, 5, 6], 3));
  }

  merge(List<int> nums1, int m, List<int> nums2, int n) {
    const zero = 0;
    late bool condition;

    if (nums1.contains(zero) || nums2.contains(zero)) {
      nums1.removeWhere((element) => element == zero);
      nums2.removeWhere((element) => element == zero);
    }
    nums1.addAll(nums2);
    nums1.sort();

    if (m + n == nums1.length) {
      condition = false;
    } else {
      condition = true;
    }

    while (condition) {
      nums1.add(0);
      if (m + n == nums1.length) {
        condition = false;
      }
    }
  }
}
