void main() {
  var gifts = {
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 'golden rings',
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 'argon',
    if (false) 30: 'Outlet',
    40: 'world',
  };

  print(nobleGases);

  // 使用 Map 显示构造
  var gifts2 = Map();
  gifts2['first'] = 'partridge';
  gifts2['second'] = 'turtledoves';
  gifts2['fifth'] = 'golden rings';

  assert(gifts2['first'] == 'partridge');
  assert(gifts2.length == 3);

  var gifts3 = Map.castFrom(gifts2); // copy from another map
  print(gifts3);

  final constMap = const {
    2: 'helium',
    10: 'neon',
    18: 'argon',
  };
  // constMap[2] = 'Helium'; // Uncommenting this causes an error
  print(gifts2.keys);
  print(gifts2.values);
  print(gifts2.length);
  print(gifts2.isEmpty);
  print(gifts2.isNotEmpty);
  print(gifts2.entries);
  gifts2.clear();
  print(gifts2.remove(2));
  gifts2.forEach((key, value) {
    print("${key}, ${value}");
  });

  // 整体合并另一个 map
  Map<String, int> map16 = {"a": 1, "b": 2, "c": 3};
  Map<String, int> other = {"a": 1, "c": 4, "d": 7};
  map16.addAll(other); //key相同时value值后者覆盖前者，前者不存在时则添加进来
  print(map16); // {a: 1, b: 2, c: 4, d: 7}

// 合并两个map 如果key有重复，被合并的map的value覆盖前者
  Map<String, int> map26 = {"a": 1, "b": 2, "c": 3};
  Map<String, int> map27 = {"a": 1, "b": 4, "d": 3, "e": 5};
  map26.addEntries(map27.entries);
  print(map26); // {a: 1, b: 4, c: 3, d: 3, e: 5}
// Conditional entries
  Map<String, int> map28 = {
    'a': 1,
    if (true) 'b': 2,
  };
  print(map28);
}
