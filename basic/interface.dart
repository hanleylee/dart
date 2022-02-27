void main() {
  ConsolePrinter cp = new ConsolePrinter();
  cp.print_data();

  Calculator c = new Calculator();
  print("The gross total : ${c.ret_tot()}");
  print("Discount : ${c.ret_dis()}");
}

class Printer {
  void print_data() {
    print("____printing data____");
  }
}

class ConsolePrinter implements Printer {
  void print_data() {
    print("____Printing to Console____");
  }
}

// 一个类可以实现多个接口, 接口名称之间用逗号分隔。
class Calculate_Total {
  int ret_tot() {
    return 0;
  }
}

class Calculate_Discount {
  int ret_dis() {
    return 0;
  }
}

class Calculator implements Calculate_Total, Calculate_Discount {
  int ret_tot() {
    return 1000;
  }

  int ret_dis() {
    return 50;
  }
}
