using System;

class XOREncryption
{
	private static string encryptDecrypt(string input) {
		char[] key = {'K', 'C', 'Q'}; //Any chars will work, in an array of any size
		char[] output = new char[input.Length];
				
		for(int i = 0; i < input.Length; i++) {
			output[i] = (char) (input[i] ^ key[i % key.Length]);
		}
		
		return new string(output);
	}
	
	public static void Main (string[] args)
	{
		string encrypted = encryptDecrypt("kylewbanks.com");
		Console.WriteLine ("Encrypted:" + encrypted);
		
		string decrypted = encryptDecrypt(encrypted);
		Console.WriteLine ("Decrypted:" + decrypted);
	}
}
