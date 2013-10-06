function encryptDecrypt(input) {
	var key = ['K', 'C', 'Q']; //Can be any chars, and any size array
	var output = [];
	
	for (var i = 0; i < input.length; i++) {
		var charCode = input.charCodeAt(i) ^ key[i % key.length].charCodeAt(0);
		output.push(String.fromCharCode(charCode));
	}
	return output.join("");
}


var encrypted = encryptDecrypt("kylewbanks.com");
console.log("Encrypted:"+encrypted);

var decrypted = encryptDecrypt(encrypted);
console.log("Decrypted:"+decrypted);