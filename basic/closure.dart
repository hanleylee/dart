// - 闭包是一个方法
// - 闭包能够访问外部方法的局部变量, 并持有其状态

var name = 'Vadaski';

// MARK: Closure as function's parameter
void testClosure1(void Function(bool isSuccess) callBack) {
  callBack(false);
}

// MARK: Closure as function's return value(策略模式)
typedef NumberOp = Function(int a, int b);

int sum(int a, int b) => a + b;
int sub(int a, int b) => a - b;

NumberOp select(String opType) {
  if (opType == 'sum') return sum;
  if (opType == 'sub') return sub;

  return (a, b) => 0;
}

int exec(NumberOp op, int a, int b) {
  return op(a, b);
}

// MARK: Closure re-assign to other var
a() {
  return () {
    print(123);
  };
}

Function(bool isSuccess) b = (isS) {
  print(123);
};

void main() {
  var printName = () {
    print(name);
  };
  printName();
  print(() {} is Object);

  testClosure1((isSuccess) {
    print(isSuccess);
    print(123);
  });

  var res = exec(select('sum'), 1, 2);
  print(res);

  var func = a();
  func();
}
