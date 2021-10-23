import 'dart:io';
import 'dart:math';

int generateSecret() {
  print("set difficulty");

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
    print("guess>> ");
    var guessing = stdin.readLineSync();
    int guess = int.parse(guessing as String);
    print(guess.runtimeType);
    tries -= 1;
  }
}

void main() {
  game();
}
