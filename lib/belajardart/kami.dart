import 'dart:io';

void main() {
  bool selesai = true;
  var data = ["", "", "", ""];
  while (selesai) {
    print("masukkan pilihan anda");
    print("1 baca\n2 tulis \n3 keluar");
    int pilih = int.parse(stdin.readLineSync());

    if (pilih == 1) {
      print("anda memilih baca");
      for (var datas in data) {
        print("nilai data = $datas");
      }
    } else if (pilih == 2) {
      print("(tulis) masukkan kolom data yang ingin dirubah = ");
      int kolom = int.parse(stdin.readLineSync());
      print("(tulis) masukkan datanya = ");
      var nilai = stdin.readLineSync();
      data[kolom - 1] = nilai;
    } else {
      print("anda akan keluar");
      selesai = false;
    }
  }
}
