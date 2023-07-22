void main() {
  var minimarketStatus = "close";
  var minuteRemainingToOpen = 5;
  if (minimarketStatus == "open") {
    print("saya akan membeli telur dan buah");
  } else if (minuteRemainingToOpen <= 5) {
    print("minimarket buka sebentar lagi, saya tungguin");
  } else {
    print("minimarket tutup, saya pulang lagi");
  }
}
