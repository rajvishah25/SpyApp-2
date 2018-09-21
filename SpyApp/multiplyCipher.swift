//
//  multiplyCipher.swift
//  SpyApp
//
//  Created by Rajvi Shah on 9/20/18.
//  Copyright © 2018 Axel Ancona Esselmann. All rights reserved.
//

import Foundation
struct multiplyCipher: Cipher{
    
    //this cipher multiplies and divides your key by 2
    func encode(_ plaintext: String, secret: String) -> String {
        var encoded = ""
        var shiftBy = UInt32(secret)!
        shiftBy*=2
        for character in plaintext {
            let unicode = character.unicodeScalars.first!.value
            let shiftedUnicode = unicode + shiftBy
            let shiftedCharacter = String(UnicodeScalar(UInt8(shiftedUnicode)))
            encoded = encoded + shiftedCharacter
        }
        print(encoded)
        return encoded
    }
    
    func decrypt(_ plaintext: String, secret:String) -> String
    {
        var decoded=""
        var shiftBack = UInt32(secret)!
        shiftBack /= 2
        for character in plaintext {
            let unicode = character.unicodeScalars.first!.value
            let shiftedUnicode = unicode - shiftBack
            let shiftedCharacter = String(UnicodeScalar(UInt8(shiftedUnicode)))
            decoded += shiftedCharacter
        }
        print(decoded)
        return decoded
    }
    
}
