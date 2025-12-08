int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  int resultA =
      teamA['Free throws']! +
      (teamA['2 pointers']! * 2) +
      (teamA['3 pointers']! * 3);
  int resultB =
      teamB['Free throws']! +
      (teamB['2 pointers']! * 2) +
      (teamB['3 pointers']! * 3);
  if (resultA > resultB) {
    return 1;
  } else if (resultA < resultB) {
    return 2;
  }
  return 0;
}
