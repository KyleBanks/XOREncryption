package xor

import "testing"

func TestEncryptDecrypt(t *testing.T) {
	sample := "kylewbanks.com"
	key := "KCQ"

	// Test encrypting
	encrypted := EncryptDecrypt(sample, key)
	if encrypted == sample {
		t.Fatalf("Expected encrypted string not to match the input: %v", encrypted)
	} else if len(encrypted) != len(sample) {
		t.Fatalf("Expected encrypted string to have the same length as the input: %v", len(encrypted))
	}

	// Test decrypting
	decrypted := EncryptDecrypt(encrypted, key)
	if decrypted != sample {
		t.Fatalf("Expected decrypted string to match the original input: %v", decrypted)
	}
}
