enum Status { none, running, stopped, paused }

extension StatusExtensnion on Status {
  String get rowName {
    switch (this) {
      case Status.none:
        return 'none';
      case Status.running:
        return 'running';
      case Status.stopped:
        return 'stopped';
      case Status.paused:
        return 'paused';
      default:
        return 'null';
    }
  }

  void talk() {
    print('meow');
  }
}

void main() {
  dynamic a;
  print(Status.values);
  Status.values.forEach((element) {
    print('value: $element, index: ${element.index}');
  });
  for (Status status in Status.values) {
    switch (status) {
      case Status.none:
        print(1);
        break;
      case Status.running:
        print(2);
        break;
      case Status.stopped:
        print(3);
        break;
      case Status.paused:
        print(4);
        break;
    }
    print(status.rowName);
  }
  // Status.values.forEach((element) => print('value: $element, index: ${element.index}'));
}
