/// Binary Search Algorithm
int binarySearch(List<int> values, int target) {
  int low = 0;
  int high = values.length - 1;

  while(low <= high) {
    int mid = (low + high) ~/ 2;
    int guess = values[mid];

    if(guess == target) return mid;

    if(target > guess) {
      low = mid + 1;
    } else {
      high = mid - 1;
    }
  }

  return -1;
}