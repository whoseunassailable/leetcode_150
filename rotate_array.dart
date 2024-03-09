class Solution {
  rotate(List<int> nums, int k) {
    List<int> sublist1 = [];
    List<int> sublist2 = [];
    List<int> finalSublist = [];

    sublist1 = nums.sublist(k + 1, nums.length);
    sublist2 = nums.sublist(0, k + 1);

    finalSublist.addAll(sublist1);
    print(finalSublist);
    finalSublist.addAll(sublist2);
    print(finalSublist);

    return finalSublist;
  }
}

void main() {
  final solution = Solution();
  print(solution.rotate([1, 2, 3, 4, 5, 6, 7], 3));
}
