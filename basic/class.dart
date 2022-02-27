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

// MARK: static
class StaticMem {
  static int num = 0;
  static disp() {
    print("The value of num is ${StaticMem.num}");
  }
}

void main() {
  TestClas c = new TestClas();
  c.display();

  Car c1 = new Car.namedConst("EA888");
  Car c2 = new Car("EA888");

  var circle = new Circle();
  circle.cal_area();

  StaticMem.num = 12;
  StaticMem.disp();
}
