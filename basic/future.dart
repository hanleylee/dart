void main() {
  // scheduleMicrotask(() => print("microtask 1"));
  Future.microtask(() => print("microtask 2"));
  print("main 1");
  Future.sync(() => print(123));
  Future.value(getName());
  getText().then((value) => print(value));
  print("main 2");

  Future.delayed(Duration(seconds: 1), () => print("event 1"));
  Future.delayed(Duration.zero, () => print("event 2"));
  Future.delayed(Duration(seconds: 2), () => print("event 3"));
}

String getName() {
  print("get Name");
  return "bob";
}

Future<String> getText() {
  return Future(() => "234");
}
