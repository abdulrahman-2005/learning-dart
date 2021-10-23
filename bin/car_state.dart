import 'dart:io';

String? input({var par}) {
  print(par);
  return stdin.readLineSync();
}

void car() {
  String status = "car is barked";
  var moving = "false";

  while (true) {
    var isIt = input(par: "go>> ");
    if (isIt == "move") {
      moving = "true";
    } else if (isIt == "stop") {
      moving = "false";
    } else if (isIt == "bark") {
      moving = "stop";
    }

    if (status != "car destroyed") {
      if (moving == "true") {
        status = "car is moving";
      } else if (moving == "false") {
        status = "car is barked";
      } else if (moving == "stop") {
        status = "car destroyed";
      }
    }
    print(status);
  }
}

void main() {
  car();
}
