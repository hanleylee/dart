// declare a class
class TestClas {
  // field
  String engine = "EA888";
  // function
  void display() {
    print('Dart and Object Orientation');
  }
}

class Car {
  String engine = "";
  // 无名构造函数(也可以不包含参数)
  Car(String engine) {
    // this 关键字引用类的当前实例
    this.engine = engine;
    print(engine);
  }
  // 命名构造函数
  Car.namedConst(String engine) {
    this.engine = engine;
    print("The engine is : ${engine}");
  }
  // 重定向构造函数
  Car.redirectConst(String engine) : this(engine);
}

// MARK: extend
class Shape {
  void cal_area() {
    print("calling calc area defined in the shape class");
  }
}

class Circle extends Shape {
  // 重写
  @override
  void cal_area() {
    super.cal_area();
    print("calling calc area define in the circle class");
  }
}

// MARK: implements
// 实现获取到的仅仅是父类 Shape 的空壳子, 必须要自己实现一次
class Rectangle implements Shape {
  void cal_area() {
    print("calling calc area define in the rectangle class");
  }
}

// MARK: static
class StaticMem {
  static int num = 0;
  static disp() {
    print("The value of num is ${StaticMem.num}");
  }
}

class Implement {
  final String what;
  final String by;
  const Implement(this.what, this.by);
}

@Implement(' the following function ', ' J1 ')
void Func() {
  print(' Implement me ');
}

void main() {
  TestClas c = new TestClas();
  c.display();

  Car c1 = Car.namedConst("EA888");
  Car c2 = Car("EA888");

  var circle = Circle();
  circle
      .cal_area(); // calling calc area defined in the shape class\ncalling calc area define in the circle class
  print(circle is Shape);
  var rectangle = Rectangle();
  rectangle.cal_area(); // calling calc area define in the rectangle class
  var triangle = Triangle();
  triangle.cal_area(); // calling calc area defined in the shape class

  StaticMem.num = 12;
  StaticMem.disp();
}
