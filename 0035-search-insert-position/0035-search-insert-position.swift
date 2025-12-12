class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        var lhs = 0, rhs = nums.count
        while lhs < rhs {
            let mid = (lhs + rhs) / 2
            nums[mid] < target ? (lhs = mid + 1) : (rhs = mid)
        }
        return lhs
    }
}