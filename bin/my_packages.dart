// to remove what ever hcaracter from string

import 'dart:io';

bool startsWith(var sample, dynamic char) {
  return sample[0] == char;
}

bool endsWith(String sample, dynamic char) {
  return sample[sample.length - 1] == char;
}

dynamic input([option, par = "", range]) {
  stdout.write(par);
  dynamic val = stdin.readLineSync();
  try {
    val = int.parse(val);
  } catch (e) {
    e;
  }
  try {
    val = double.parse(val);
  } catch (e) {
    e;
  }
  try {
    if (val == "true" || val == "y") {
      val = true;
    } else if (val == "false" || val == "n") {
      val = false;
    }
  } catch (e) {
    e;
  }
  if (option == "type") {
    return val.runtimeType;
  } else if (option == "mult") {
    for (int i = 1; i <= range; i++) {
      print(val);
    }
  } else {
    return val;
  }
}

void main(List<String> args) {
  print(startsWith("hello", "h"));
  print(endsWith("hello", "o"));
}
