import 'dart:io';

void main(List<String> args) {
  bool nilai = true;
  int hasil = 0;
  while (nilai) {
    stdout.write("apakah ingin ulang?");
    var jawab = stdin.readLineSync();
    if (jawab == 'y') {
      hasil++;
    } else {
      nilai = false;
    }
  }
  print("total nilai = $hasil");
}
