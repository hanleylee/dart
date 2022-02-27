void main() {
  var halogens = {'yibai.com', 'chlorine', 'bromine', 'iodine', 'astaine'};

  var names = <String>{}; // create a set
  Set<String> names2 = {}; // create a set
  var names3 = {}; // create a map, not a set

  var elements = <String>{};
  elements.add('fluorine');
  elements.addAll(halogens);
  assert(elements.length == 5);

  // 要创建一个编译时常量的集合, 请在set文字之前添加const
  final constantSet = const {
    'fluorine',
    'chlorine',
    'bromine',
    'iodine',
    'astaline',
  };
  // constantSet.add('helum'); // uncommenting this causes an error
}
