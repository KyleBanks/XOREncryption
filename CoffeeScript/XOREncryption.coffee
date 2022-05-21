encryptDecrypt = (input) ->
  key = ['K', 'C', 'Q'] #Can be any chars, and any size array
  output = ""

  i = 0
  while i < input.length
    charCode = input.charCodeAt(i) ^ key[i % key.length].charCodeAt(0)
    output += String.fromCharCode charCode
    i++
  return output

encrypted = encryptDecrypt "kylewbanks.com"
console.log("Encrypted:" + encrypted)

decrypted = encryptDecrypt encrypted
console.log("Decrypted:" + decrypted)