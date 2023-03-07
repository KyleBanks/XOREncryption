package xor

import "strings"

// EncryptDecrypt runs a XOR encryption on the input string, encrypting it if it hasn't already been,
// and decrypting it if it has, using the key provided.
func EncryptDecrypt(input, key string) string {
	kL := len(key)

	var tmp []string
	for i := 0; i < len(input); i++ {
		tmp = append(tmp, string(input[i]^key[i%kL]))
	}
	return strings.Join(tmp, "")
}
