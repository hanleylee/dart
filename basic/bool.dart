void main() {
  // 检查空字符串
  var fullName = '';
  assert(fullName.isEmpty);

  // 检查零值
  var hitPoints = 0;
  assert(hitPoints <= 0);

  // 检查是否为 null
  var unicorn;
  assert(unicorn == null);
  var iMeantToDoThis = 0 / 0;
  assert(iMeantToDoThis.isNaN);
}
