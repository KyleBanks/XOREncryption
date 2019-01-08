//
//  XOREncryption.swift
//  XOREncryption
//
//  Created by Denis Simon on 2019-01-08.
//

import Foundation

extension Character {
    func utf8() -> UInt8 {
        let utf8 = String(self).utf8
        return utf8[utf8.startIndex]
    }
}

func encryptDecrypt(_ input: String) -> String {
    let key = "KCQ".characters.map { $0 } //Can be any chars, and any length array
    let length = key.count
    var output = ""
    
    for i in input.characters.enumerated() {
        let byte = [i.element.utf8() ^ key[i.offset % length].utf8()]
        output.append(String(bytes: byte, encoding: .utf8)!)
    }
    
    return output
}

let encrypted = encryptDecrypt("Hello, World!")
print("Encrypted: \(encrypted)") // output: Encrypted: &=',}k>9/5j
let decrypted = encryptDecrypt(encrypted)
print("Decrypted: \(decrypted)") // output: Decrypted: Hello, World!
