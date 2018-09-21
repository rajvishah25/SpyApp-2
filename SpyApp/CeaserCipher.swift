import Foundation




protocol Cipher {
    func encode(_ plaintext: String, secret: String) -> String
    func decrypt(_ plaintext:String, secret:String) -> String
}

struct CeaserCipher: Cipher {

    func encode(_ plaintext: String, secret: String) -> String {
        var encoded = ""
        var shiftBy = UInt32(secret)!

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
