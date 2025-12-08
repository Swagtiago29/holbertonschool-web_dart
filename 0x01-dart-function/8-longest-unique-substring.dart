String longestUniqueSubstring(String str) {
  Map<String, int> lastSeen = {};
  int start = 0;
  int maxStart = 0;
  int maxLength = 0;

  for (int i = 0; i < str.length; i++) {
    String char = str[i];

    if (lastSeen.containsKey(char) && lastSeen[char]! >= start) {
      start = lastSeen[char]! + 1;
    }

    lastSeen[char] = i;

    int currentLength = i - start + 1;

    if (currentLength > maxLength) {
      maxLength = currentLength;
      maxStart = start;
    }
  }

  return str.substring(maxStart, maxStart + maxLength);
}
