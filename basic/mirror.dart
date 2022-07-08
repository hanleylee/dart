import 'dart:mirrors';

main() {
  ClassMirror cm = reflectClass(ChildClass);
  cm.instanceMembers.forEach((key, value) => print('$key >>> $value'));

  ClassMirror simpleCM = reflectClass(Simple);
  Simple simple = simpleCM.newInstance(Symbol.empty, ['hey']) as Simple;
}

class Simple {
  Simple(a) {
    print('A new Simple: $a');
  }
}

class SuperClass {
  int superField = 0;
  final int superFinalField = 1;
  int get superGetter => 2;
  set superSetter(x) {
    superField = x;
  }

  int superMethod(x) => 4;

  static int superStaticField = 5;
  static final int superStaticFinalField = 6;
  static const superStaticConstField = 7;
  static int get superStaticGetter => 8;
  static set superStaticSetter(x) {}
  static int superStaticMethod(x) => 10;
}

class ChildClass extends SuperClass {
  int aField = 11;
  final int aFinalField = 12;
  get aGetter => 13;
  set aSetter(x) {
    aField = x;
  }

  int aMethod(x) => 15;

  static int staticField = 16;
  static final staticFinalField = 17;
  static const staticConstField = 18;
  static int get staticGetter => 19;
  static set staticSetter(x) {
    staticField = x;
  }

  static int staticMethod(x) => 21;
}
