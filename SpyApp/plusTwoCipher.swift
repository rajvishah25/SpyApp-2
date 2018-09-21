//
//  plusTwoCipher.swift
//  SpyApp
//
//  Created by Rajvi Shah on 9/20/18.
//  Copyright © 2018 Axel Ancona Esselmann. All rights reserved.
//

import Foundation
//This cipher adds two to your secret key
struct plusTwoCipher:Cipher {
    
    func encode(_ plaintext: String, secret: String) -> String {
        var encoded = ""
        var shiftBy = UInt32(secret)!
        shiftBy+=2
        for character in plaintext {
            let unicode = character.unicodeScalars.first!.value
            let shiftedUnicode = unicode + shiftBy
            let shiftedCharacter = String(UnicodeScalar(UInt8(shiftedUnicode)))
            encoded = encoded + shiftedCharacter
        }
        return encoded
    }
    
    func decrypt(_ plaintext: String, secret:String) -> String
    {
        var decoded=""
        var shiftBack = UInt32(secret)!
        shiftBack -= 2
        for character in plaintext {
            let unicode = character.unicodeScalars.first!.value
            let shiftedUnicode = unicode - shiftBack
            let shiftedCharacter = String(UnicodeScalar(UInt8(shiftedUnicode)))
            decoded += shiftedCharacter
        }
        return decoded
    }
}
