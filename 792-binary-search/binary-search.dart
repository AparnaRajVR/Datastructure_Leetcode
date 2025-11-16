class Solution {
  int search(List<int> nums, int target) {
    for(int i=0;i<nums.length;i++){
        if(nums[i]==target){
            return i;
        }
        else{
             -1;
        }
    }
    return -1;
  }
}