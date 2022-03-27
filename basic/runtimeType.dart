import 'dart:ffi';
import 'dart:mirrors';

void main() {
  // var a = 1.0;
  // var c = "123";
  // Int32 d = Int32();
  // Set<String> set1 = {"1", "2"};
  // Map<String, String> dict = {"1": "a"};
  // print(set1.runtimeType);
  // print(set1 is Set);
  // print(dict is Map);
  // print(true is bool);
  // print("123" is String);
  // print(d is Int64);
  get<Set<String>>("test1");
}

getTypeName(dynamic obj) {
  return reflect(obj).type.reflectedType.toString();
}

get<T>(String key) {
  print(T);
  print(T == Set<String>);
}

T? cast<T>(x) => x is T ? x : null;
T? castType<T>(x) => x is T ? x : null;
