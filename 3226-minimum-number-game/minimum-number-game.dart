class Solution {
  List<int> numberGame(List<int> nums) {
     nums.sort();
    for(int i=0;i<nums.length-1;i+=2){
        int temp=nums[i];
        nums[i]=nums[i+1];
        nums[i+1]=temp;
        
    }
    return nums;
  }}
