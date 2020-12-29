import 'dart:io';

void main(List<String> args) {
  print("ini adalah latihan fungsi saya");
  print(
      "menurut saya fungsi adalah struktur paling kecil dari pemrograman, disusul kelas, kemudian object");
  print("program ini saya buat agar saya semakin paham bahasa dart");
  katasaya(3, 3);
}

void katasaya(int y, int z) {
  var saya = [];
  for (var i = 1; i <= y; i++) {
    for (var j = 1; j <= z; j++) {
      stdout.write("masukkan baris-$i, kolom-$j = ");
      saya[i][j] = int.parse(stdin.readLineSync());
    }
  }
  for (var i = 1; i <= y; i++) {
    print("");
    for (var j = 1; j <= z; j++) {
      stdout.write(saya[i][j]);
    }
  }
}
