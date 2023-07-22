void main() {
  var hari = 30;
  var bulan = 12;
  var tahun = 1945;

  if (hari <= 0 ||
      bulan <= 0 ||
      tahun < 1900 ||
      hari > 31 ||
      bulan > 12 ||
      tahun > 2020) {
    print("invalid!");
  } else {
    switch (bulan) {
      case 1:
        {
          print("${hari.toString()} Januari ${tahun.toString()}");
          break;
        }
      case 2:
        {
          print("${hari.toString()} Februari ${tahun.toString()}");
          break;
        }
      case 3:
        {
          print("${hari.toString()} Maret ${tahun.toString()}");
          break;
        }
      case 4:
        {
          print("${hari.toString()} April ${tahun.toString()}");
          break;
        }
      case 5:
        {
          print("${hari.toString()} Mei ${tahun.toString()}");
          break;
        }
      case 6:
        {
          print("${hari.toString()} Juni ${tahun.toString()}");
          break;
        }
      case 7:
        {
          print("${hari.toString()} Juli ${tahun.toString()}");
          break;
        }
      case 8:
        {
          print("${hari.toString()} Agustus ${tahun.toString()}");
          break;
        }
      case 9:
        {
          print("${hari.toString()} September ${tahun.toString()}");
          break;
        }
      case 10:
        {
          print("${hari.toString()} Oktober ${tahun.toString()}");
          break;
        }
      case 11:
        {
          print("${hari.toString()} November ${tahun.toString()}");
          break;
        }
      case 12:
        {
          print("${hari.toString()} Desember ${tahun.toString()}");
          break;
        }
    }
  }
}
