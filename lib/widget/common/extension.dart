String truncateText(String input, int cutoff) {
  if (input.length <= cutoff) {
    return input;
  }
  return '${input.substring(0, cutoff)}...';
}
