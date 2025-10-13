class Solution {
  int differenceOfSum(List<int> nums) {
    int elementsum=0,digitsum=0;
for(int i=0;i<nums.length;i++){
    digitsum+=nums[i];

}
String numberstring=nums.join('').toString();
for(int i=0;i<numberstring.length;i++){
    elementsum+=int.parse(numberstring[i]);
}
if(elementsum>digitsum){
    return elementsum - digitsum;
}
else
return  digitsum -elementsum;
  }
}