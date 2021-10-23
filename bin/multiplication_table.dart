import 'package:colorize/colorize.dart';

void main() {
  Colorize colorize = Colorize();
  for (int i = 1; i < 13; i++) {
    for (int j = 1; j < 13; j++) {
      int out = i * j;
      colorize.initial = "$i X $j = $out";
      colorize.black();
      if (i == 1) {
        colorize.bgRed();
      } else if (i == 2) {
        colorize.bgLightRed();
      } else if (i == 3) {
        colorize.bgYellow();
      } else if (i == 4) {
        colorize.bgGreen();
      } else if (i == 5) {
        colorize.bgBlue();
      } else if (i == 6) {
        colorize.bgLightBlue();
      } else if (i == 7) {
        colorize.bgLightMagenta();
      } else if (i == 8) {
        colorize.bgCyan();
      } else if (i == 9) {
        colorize.bgDarkGray();
      } else if (i == 10) {
        colorize.bgWhite();
      } else if (i == 11) {
        colorize.bgLightGreen();
      } else if (i == 12) {
        colorize.bgLightYellow();
      }

      print(colorize);
    }
  }
}
