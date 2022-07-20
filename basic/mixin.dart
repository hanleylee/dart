class Shape {
  void cal_area() {
    print("calling calc area defined in the shape class");
  }

  // must be override by sub-class
  void call_area_override() {
    throw Error();
  }
}

// MARK: 使用关键字with混入普通的类
// 混入可以复用父类方法的实现, 可以达到类似多继承的效果, 但是避免了多继承的菱形问题
class Triangle with Shape {
  @override
  void call_area_override() {
    print("Overrided");
  }
}

// MARK: 使用mixin关键字定义混入类
mixin A {
  String name = "AA";
  printA() {
    print("这是普通类A");
  }
}

mixin B {
  String name = "BB";
  printB() {
    print("这是普通类B");
  }
}

class Student with A, B {}

// 被继承的类
class Person {
  int age;
  Person(this.age);

  printInfo() {
    print("被继承的类Person, 年纪${this.age}");
  }
}

// B 是混入类, 不能继承其他类, 报错
// class BB extends Person {
//   BB() : super(1);
//   printB() {
//     print("混入类B");
//   }
// }

// // 混入
// class Student with B {}

void main() {
  var triangle = Triangle();
  triangle.cal_area();
  triangle.call_area_override();

  var student = Student();
  student.printA();
  student.printB();
  print(student.name);
}
