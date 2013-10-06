def encryptDecrypt(String input) {
    def key = ['K', 'C', 'Q'] //Can be any chars, and any length array
    def output = []

    for(int i = 0; i < input.length(); i++) {
		int a = input.charAt(i) as int;
		int b = (key[i % key.size()] as char) as int
        output.add((a ^ b) as char)
    }

    output.join("")
}


def encrypted = encryptDecrypt("kylewbanks.com")
println("Encrypted:" + encrypted)

def decrypted = encryptDecrypt(encrypted)
println("Decrypted:" + decrypted)