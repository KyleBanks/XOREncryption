fun encryptDecrypt(input: String): String {
    val key = charArrayOf('K', 'C', 'Q') //Can be any chars, and any length array
    val output = StringBuilder()

    for (i in 0 until input.length) {
        val a: Int = input[i].toInt()
        val b: Int = key[i % key.size].toInt()
        output.append((a xor b).toChar())
    }

    return output.toString()
}

fun main(args: Array<String>) {
    val encrypted = encryptDecrypt("kylewbanks.com")
    println("Encrypted: $encrypted") // output: Encrypted:  :=.43*-:8m2$.

    val decrypted = encryptDecrypt(encrypted)
    println("Decrypted: $decrypted") // output: Decrypted: kylewbanks.com
}