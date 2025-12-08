bool isPalindrome(String s){
  int left = 0;
  int right = s.length - 1;

  while(left < right){
    if(s[left] != s[right]){
      return false;
    }
    right--;
    left++;
  }
  return true;
}