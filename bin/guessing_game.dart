import 'dart:io';
import 'dart:math';
import 'package:colorize/colorize.dart';

int generateSecret() {
  stdout.write("set difficulty>> ");

  Random random = new Random();
  dynamic difficulty = stdin.readLineSync();
  difficulty = int.parse(difficulty);
  int secret = random.nextInt(difficulty);
  return secret;
}

void game() {
  Colorize colorize = Colorize();
  colorize.bold();
  colorize.italic();
  
  int secret = generateSecret();
  int guessed = 0;
  int tries = 3;
  while (tries > 0 && guessed != secret) {
    stdout.write("guess>> ");
    var guessing = stdin.readLineSync();
    var guess = int.parse(guessing!);
    if (guess == secret) {
      colorize.initial = "\n!!!!!!!!!!\n\nyou won with [$secret]\n\n!!!!!!!!!!";
      print(colorize.bgGreen());
      break;
    } else if (guess != secret) {
      colorize.initial = "wrong guess with $guess";
      print(colorize.bgBlue());
      guessed = guess;
      tries -= 1;
    } else {
      colorize.initial =
          "\n^_^ ^_^ ^_^ ^_^ ^_^\nyou lost! number was $secret\n^_^ ^_^ ^_^ ^_^ ^_^";
      print(colorize.bgRed());
      break;
    }
    if (tries == 0) {
      colorize.initial =
          "\n^_^ ^_^ ^_^ ^_^ ^_^\nyou lost! number was $secret\n^_^ ^_^ ^_^ ^_^ ^_^";
      print(colorize.bgRed());
    }
  }
}

void main() {
  game();
}
