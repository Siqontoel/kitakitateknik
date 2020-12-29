import 'dart:io';

// membuat fungsi luas persegi
int luasPersegi(int n) => n * n;
int kelilingPersegi(int n) => 4 * n;
int fibonacci(int n) {
  if (n == 0 || n == 1) return n;
  return fibonacci(n - 1) + fibonacci(n - 2);
}

void kataPembuka() {
  print("--- Program matematika bangun ---");
  print(
      "anda ingin apa?\n1. luas persegi\n2. keliling persegi \n3. fibbonacci");
}

main() {
  bool lanjut = true;
  while (lanjut) {
    kataPembuka();
    int pilihan = int.parse(stdin.readLineSync());
    if (pilihan == 1) {
      print("anda memilih luas persegi");
      stdout.write("Input nilai n: ");
      int s = int.parse(stdin.readLineSync());
      var result = luasPersegi(s);
      print("luas persegi: $result");
    } else if (pilihan == 2) {
      print("anda memilih keliling persegi");
      stdout.write("Input nilai n: ");
      int s = int.parse(stdin.readLineSync());
      var result = kelilingPersegi(s);
      print("keliling persegi: $result");
    } else if (pilihan == 3) {
      print("anda memilih luas persegi");
      stdout.write("Input nilai n: ");
      int s = int.parse(stdin.readLineSync());
      var result = fibonacci(s);
      print("fibonacci: $result");
    } else {
      print("anda akan keluar!?");
      lanjut = false;
    }
  }
}
