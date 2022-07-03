class Vector {
  num x, y;
  Vector(this.x, this.y);

  // 自定义相加运算符, 实现向量相加
  Vector operator +(Vector v) => Vector(x + v.x, y + v.y);

  // 覆写相等运算符, 判断向量相等
  bool operator ==(dynamic v) => x == v.x && y == v.y;
}

void main() {
  final x = Vector(3, 3);
  final y = Vector(2, 2);
  final z = Vector(1, 1);
  print(x == (y + z)); // true
}
