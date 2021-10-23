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
  int secret = generateSecret();
  int guessed = 0;
  int tries = 3;
  while (tries > 0 && guessed != secret) {
    stdout.write("guess>> ");
    var guessing = stdin.readLineSync();
    var guess = int.parse(guessing!);
    if (guess == secret) {
      print("\n!!!!!!!!!!\n\nyou won with [$secret]\n\n!!!!!!!!!!");
      break;
    } else if (guess != secret) {
      print("wrong guess with $guess");
      guessed = guess;
      tries -= 1;
    } else {
      print("you lost! number was $secret");
      break;
    }
    if (tries == 0) {
      print("\n^_^ ^_^ ^_^ ^_^ ^_^\nyou lost! number was $secret\n^_^ ^_^ ^_^ ^_^ ^_^");
    }
  }
}

void main() {
  game();
}
