void main() {
  // MARK: for
  print("for");
  var num = 5;
  var factorial = 1;

  for (var i = num; i >= 1; i--) {
    factorial *= i;
  }

  print(factorial);

  for (int temp, i = 0, j = 1; j < 30; temp = i, i = j, j = i + temp) {
    print('${j}');
  }

  // MARK: for ... continue
  print("\nfor ... continue");
  var num1 = 0;
  var count1 = 0;
  for (num1 = 0; num1 <= 20; num1++) {
    if (num1 % 2 == 0) {
      continue;
    }
    count1++;
  }
  print("The count of odd values between 0 and 20 is: ${count1}");

  // MARK: for ... in
  print("\nfor ... in");
  var obj = [12, 13, 14];
  for (var prop in obj) {
    print(prop);
  }
}
