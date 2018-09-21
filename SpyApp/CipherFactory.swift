import Foundation

struct CipherFactory {

    private var ciphers: [String: Cipher] = [
        "caesar": CeaserCipher(),
        //"AlphanumericCaesarCipher" : AlphanumericCaeserCipher(),
        "multiplyCipher":multiplyCipher(),
        "plusTwoCipher":plusTwoCipher()
    ]

    func cipher(for key: String) -> Cipher {
        return ciphers[key]!
    }
}
