class Solution {
  int? numberOfEmployeesWhoMetTarget(List<int> hours, int target) {
    int count=0;
   for(int i=0;i<=hours.length-1;i++) {
    if(hours[i]>=target){
    count++;
    }
   }
  return count;
  }
}