int findPeakUtil(List<int> arr, int low, int high, int n) {
  var x = (low + high) / 2;
  var mid = x.toInt();
  if ((mid == 0 || arr[mid - 1] <= arr[mid]) &&
      (mid == n - 1 || arr[mid + 1] <= arr[mid])) {
    return mid;
  } else if (mid > 0 && arr[mid - 1] > arr[mid]) {
    return findPeakUtil(arr, low, (mid - 1), n);
  } else {
    return findPeakUtil(arr, (mid + 1), high, n);
  }
}

int findPeak(List<int> arr, int n) {
  return findPeakUtil(arr, 0, n - 1, n);
}
