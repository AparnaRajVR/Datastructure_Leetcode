class Solution {
  List<bool> kidsWithCandies(List<int> candies, int extraCandies) {
    List<int>maxcandy=[];
    List<bool> result=[];
 for(int i=0;i<candies.length;i++){
    maxcandy.addAll(candies);
    maxcandy.sort();
    if(candies[i]+extraCandies>=maxcandy.last){
            result.add(true);
        }
        else{
            result.add(false);
        }
        
    }
    return result;

  }
}