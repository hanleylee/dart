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
  };

  // 使用 Map 显示构造
  var gifts2 = Map();
  gifts2['first'] = 'partridge';
  gifts2['second'] = 'turtledoves';
  gifts2['fifth'] = 'golden rings';

  assert(gifts2['first'] == 'partridge');
  assert(gifts2.length == 3);

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
  gifts2.clear();
  print(gifts2.remove(2));
  gifts2.forEach((key, value) {
    print("${key}, ${value}");
  });
}
