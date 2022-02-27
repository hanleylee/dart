void main() {
  // MARK: while
  print("while");
  var num = 5;
  var factorial = 1;

  while (num >= 1) {
    factorial = factorial * num;
    num--;
  }

  print("The factorial is ${factorial}");

  // MARK: while ... break
  print("\nwhile ... break");
  var i = 1;
  while (i <= 10) {
    if (i % 5 == 0) {
      print("The first multiple of 5 between 1 and 10 is : ${i}");
      break;
    }
    i++;
  }

  // MARK: do ... while
  print("\ndo ... while");
  var n = 10;
  do {
    print(n);
    n--;
  } while (n >= 0);
}
