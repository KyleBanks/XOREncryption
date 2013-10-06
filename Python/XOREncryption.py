#!/usr/bin/env python
# encoding: utf-8
"""
XOREncryption.py

Created by Kyle Banks on 2013-10-06.
"""

def encryptDecrypt(input):
	key = ['K', 'C', 'Q'] #Can be any chars, and any size array
	output = []
	
	for i in range(len(input)):
		xor_num = ord(input[i]) ^ ord(key[i % len(key)])
		output.append(chr(xor_num))
	
	return ''.join(output)


def main():
	encrypted = encryptDecrypt("kylewbanks.com");
	print("Encrypted:"+encrypted);
	
	decrypted = encryptDecrypt(encrypted);
	print("Decrypted:"+decrypted);
	pass


if __name__ == '__main__':
	main()

