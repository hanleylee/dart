void main() {
  // 关键字String用于表示字符串文字，字符串值嵌入单引号或双引号中。因此可以使用单引号或双引号来创建字符串：
  var s1 = 'Single quote work well for string literals.';
  var s2 = "Double quotes work just as well.";
  var s3 = 'It\'s easy to escape the string delimiter';
  var s4 = "It's even easier to use the other delimiter";

  // 可以使用${expression}将表达式的值放在字符串中。如果表达式是标识符，则可以跳过{}
  var s = 'string interpolation';
  assert('Dart has $s, which is very handy.' ==
      'Dart has string interpolation, ' + 'which is very handy');
  assert('That deserves all caps. ' + '${s.toUpperCase()} is very handy!' ==
      'That deserves all caps. ' + 'STRING INTERPOLATION is very handy!');
  print(s.codeUnits);
  print(s.isEmpty);
  print(s.length);
  print(s.toLowerCase());
  print(s.toUpperCase());
  print(s.trim());
  print(s.compareTo('hello world'));
  print(s.split(' '));
  print(s.substring(3));
  print(s.toString());
  print(s.codeUnitAt(2));

  // 可以使用相邻的字符串文字或+运算符来连接字符串：
  var s5 = 'String '
      'concatenation'
      "works even over line breaks.";
  assert(s5 ==
      'String concatenation works even over '
          'line breaks.');

  var s6 = 'The + operator ' + 'works, as well.';
  assert(s6 == 'The operator works, as well.');

  // 使用带有单引号或双引号的三引号创建多行字符串
  var s7 = '''
      You can create
      multi-line strings like this one.
      ''';
  print(s7);
  var s8 = """This is also a
      multi-line string.""";
  print(s8);

  // 可以通过在前面加上r来创建“原始”字符串
  var s9 = r'In a raw string, not even \n gets special treatment.';
  print(s9);

  // 文字字符串是编译时常量，只要任何插值表达式是一个编译时常量，其值为null或数值，字符串或布尔值都可以。
  const aConstNum = 0;
  const aConstBool = true;
  const aConstString = 'a constant string';
  const validConstString = '$aConstNum $aConstBool $aConstString';

  // var aNum = 0;
  // var aBool = true;
  // var aString = 'a string';
  // const aConstList = [1, 2, 3];
  // const invalidConstString = '$aNum $aBool $aString $aConstList';
}
