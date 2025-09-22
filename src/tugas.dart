import 'dart:io';

void main() {
  // Meminta input skor dari pengguna
  stdout.write('Masukkan skor Anda (0-100): ');
  
  // Membaca input dari konsol
  String? inputSkor = stdin.readLineSync();

  // Validasi input awal: cek apakah input kosong
  if (inputSkor == null || inputSkor.isEmpty) {
    print('Input tidak valid. Silakan masukkan nilai.');
    return;
  }

  // Mengubah string input menjadi angka 
  try {
    // Menggunakan int.parse() untuk mendapatkan bilangan bulat
    int skor = int.parse(inputSkor);

    // Validasi rentang skor (0-100)
    if (skor < 0 || skor > 100) {
      print('Skor tidak valid. Masukkan nilai antara 0 dan 100.');
    } else {
      // Menentukan grade menggunakan if-else
      String grade;
      if (skor >= 85) {
        grade = 'A';
      } else if (skor >= 70) {
        grade = 'B';
      } else if (skor >= 60) {
        grade = 'C';
      } else if (skor >= 50) {
        grade = 'D';
      } else {
        grade = 'E';
      }

      // Menampilkan output dengan format yang diminta
      print('Skor Anda: $skor');
      print('Grade Anda: $grade');
    }
  } catch (e) {
    // Menangkap error jika input bukan angka atau angka desimal
    print('Input tidak valid. Silakan masukkan angka bulat.');
  }
}