void test() {
  print(123);
}

bool isZero(int number) {
  return number == 0;
}

void printInfo(int number, Function check) {
  print("$number is Zero: ${check(number)}");
}

// type Function
Function f = isZero;
int x = 10;
int y = 0;

// 可选命名参数
void enable1Flags({bool? bold, bool? hidden}) => print("$bold, $hidden");
// 可选命名参数, 带默认值
void enable2Flags({bool bold = true, bool hidden = false}) =>
    print("$bold, $hidden");

// 可忽略的无名参数
void enable3Flags(bool bold, [bool? hidden]) => print("$bold, $hidden");
// 可忽略的无名参数, 带默认值
void enable4Flags(bool bold, [bool hidden = true]) => print("$bold, $hidden");

void main() {
  test();
  printInfo(x, f);
  printInfo(y, f);

  enable1Flags(bold: true, hidden: false);
  enable2Flags();
  enable3Flags(true, false);
  enable4Flags(true);
}
