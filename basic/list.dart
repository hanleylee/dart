void main() {
  // 可增长列表
  var list = [1, 2, 3];
  assert(list.length == 3);
  assert(list[1] == 2);

  list[1] = 1;
  assert(list[1] == 1);
  print(list.first);
  print(list.isEmpty);
  print(list.isNotEmpty);
  print(list.length);
  print(list.last);
  print(list.reversed);
  print(list.single);

  // 要创建一个编译时常量的列表, 请在列表文字之前添加 const
  var constantList = const [1, 2, 3];

  // 使用扩展运算符(...)将列表的所有元素插入另一个列表
  var list2 = [0, ...list];

  // 如果扩展运算符右侧的表达式可能为null，则可以通过使用支持null的扩展运算符(...?)来避免异常
  var nulllist;
  var list3 = [0, ...?list];
  assert(list3.length == 1);

  // Dart 2.3还引入了if和collection的集合，使用它在条件(if)和重复(for)构建集合。
  var promoActive = true;
  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];

  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  assert(listOfStrings[1] == '#1');
}
