package xor

// EncryptDecrypt runs a XOR encryption on the input string, encrypting it if it hasn't already been,
// and decrypting it if it has, using the key provided.
func EncryptDecrypt(input, key string) (output string) {
	kL := len(key)
	for i := range input {
		output += string(input[i] ^ key[i%kL])
	}
	return output
}
