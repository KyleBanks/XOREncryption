
String encryptDecrypt(String input) {
  var key = ['K', 'C', 'Q']; //Can be any chars, and any size array
  var output = [];
  
  for(var i = 0; i < input.length; i++) {
    var charCode = input.codeUnitAt(i) ^ key[i % key.length].codeUnitAt(0);
    output.add(new String.fromCharCode(charCode));
  }
  
  return output.join("");
}

void main() {
  String encrypted = encryptDecrypt("kylewbanks.com");
  print("Encrypted:" + encrypted);
  
  String decrypted = encryptDecrypt(encrypted);
  print("Decrypted:" + decrypted);
}