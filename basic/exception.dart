void main() {
  int x = 12;
  int y = 0;
  int res;

  try {
    res = x ~/ y;
  } on IntegerDivisionByZeroException {
    print('Cannot divide by zero');
  }

  try {
    res = x ~/ y;
  } on IntegerDivisionByZeroException catch (e) {
    print('Cannot divide by zero');
    print(e);
  }

  // finally块包括应该执行的代码，而不管异常的发生。try/on/catch之后无条件执行可选的finally块。
  try {
    res = x ~/ y;
  } on IntegerDivisionByZeroException {
    print("Cannot divide by zero");
  } finally {
    print('Finally block executed');
  }

  try {
    test_age(-1);
  } catch (e) {
    print("Age cannot be negative");
  }
}

void test_age(int age) {
  if (age < 0) {
    throw new FormatException();
  }
}
