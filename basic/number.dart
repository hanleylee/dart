void main() {
  // MARK: int
  var x = 123;
  var hex = 0xDEADBEEF;

  // string to int
  var one = int.parse('1');
  print(one.runtimeType);
  assert(one == 1);
  print(one.hashCode); // 返回数值的哈希码
  print(one.isFinite); // 如果数字有限, 则返回 true
  print(one.isInfinite); // 如果数字为正无穷或负无穷, 则返回 true
  print(one.isNaN); // 如果是非数字值, 返回 true
  print(one.isNegative); // 如果数字为负, 返回 true
  print(one.sign); // 返回 -1, 0, 1, 具体取决于数字的符号和数值
  print(one.isEven); // 如果数字是偶数, 则返回 true
  print(one.isOdd); // 如果数字是奇数, 则返回 true

  print(one.abs()); // 绝对值
  print(one.ceil()); // 返回不小于该数字的最小整数
  print(one.compareTo(2)); // 将此与其他数字进行比较
  print(one.floor()); // 返回不大于当前数字的最大整数
  print(one.remainder(3)); // 除以两个数后，返回截断的余数
  print(one.round()); // 返回最接近当前数字的整数
  print(one.toDouble()); // 返回数字的 double 等效值
  print(one.toInt()); // 返回数字的 int 等效值
  print(one.toString()); // 返回数字的字符串等效表现形式
  print(one.truncate()); // 丢弃小数位后返回一个整数

  // int to string
  String oneAsString = 1.toString();
  assert(oneAsString == '1');

  // MARK: float
  var y = 1.199;
  var exponents = 1.42e5;

  double z = 10; // equal to `double z = 10.0`
  // string to double
  var onePointOne = double.parse('1.1');
  assert(onePointOne == 1.1);
  // double to string
  String piAsString = 3.1415.toStringAsFixed(2);
  assert(piAsString == '3.14');

  // binary operation
  assert((3 << 1) == 6); // 0011 << 1 == 0110
  assert((3 >> 1) == 1); // 0011 >> 1 == 0001
  assert((3 | 1) == 7); // 0011 | 0100 == 0111
}
