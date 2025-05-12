import 'dart:math';

import 'package:binary_search/binary_search_algorithm.dart';

/// This is a simple binary search implementation in Dart.
void main(List<String> arguments) {
  if(arguments.length < 2) {
    print("Please provide a length of list and a target.");
    return;
  }

  int length = int.parse(arguments[0]);

  if(length <= 0) {
    print("Length must be greater than 0.");
    return;
  }

  int target = int.parse(arguments[1]);

  if(target <= 0) {
    print("Target must be greater than 0.");
    return;
  }

  List<int> values = List.generate(length, (index) => index + 1);
  print("Searching for $target in $values");

  int result = binarySearch(values, target);

  if(result == -1) {
    print("Not found");
  } else {
    print("Found at index: $result");
  }
}
