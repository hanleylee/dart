void main() {
  // Dart 通过在变量名前加上数据类型前缀来支持类型检查
  String name = 'Maxsu';
  print(name); // Maxsu
  int number = 99;
  print(number); // 99

  // String name1 = 1; // Uncommenting this will error

  // final 和 const 关键字用于声明常量. 在 Dart 中不能修改使用 final 或 const 关键字声明变量的值. 这些关键字可以与变量的数据类型一起使用,
  // 也可以与 var 关键字一起使用.

  // final 关键字表示一旦被赋值即不可修改
  final val1 = 12;
  print(val1); // 12
  // const 关键字用于表示编译时常量. 使用 const 关键字声明的变量是隐式 final
  const pi = 3.14;
  // 只有 const 变量可用于计算编译时常量. 编译时常量是常量, 其值将在编译时确定.
  const area = pi * 12 * 12;
  print(area); // 452.15999999999997

  // area = 123; // 如果尝试修改使用final或const关键字声明的变量, Dart 会抛出异常
}
