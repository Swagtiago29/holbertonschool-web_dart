bool isPalindrome(String s){
  int left = 0;
  int right = s.length - 1;
  if (s.length < 3){
    return false;
  }
  while(left < right){
    if(s[left] != s[right]){
      return false;
    }
    right--;
    left++;
  }
  return true;
}