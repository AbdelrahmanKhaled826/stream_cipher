# stream_cipher

A stream cipher is a symmetric key cipher where plaintext digits are combined with a pseudorandom cipher digit stream (keystream).
In a stream cipher, each plaintext digit is encrypted one at a time with the corresponding digit of the keystream, to give a digit of the ciphertext stream.

![image](https://github.com/AbdelrahmanKhaled826/stream_cipher/assets/66374409/c20cfa9d-2d17-43fb-9890-21f86b24aedd)

he pseudorandom keystream is typically generated serially from a random seed value using digital shift registers. 
The seed value serves as the cryptographic key for decrypting the ciphertext stream.

![image](https://github.com/AbdelrahmanKhaled826/stream_cipher/assets/66374409/d9695dd2-06fd-4268-b4e5-5d4a26f1673c)

# for Encryption
Plain Text and Keystream produces Cipher Text (Same keystream will be used for decryption.).
The Plaintext will undergo XOR operation with keystream bit-by-bit and produces the Cipher Text.
# for Decryption
Cipher Text and Keystream gives the original Plain Text (Same keystream will be used for encryption.).
The Ciphertext will undergo XOR operation with keystream bit-by-bit and produces the actual Plain Text.
![image](https://github.com/AbdelrahmanKhaled826/stream_cipher/assets/66374409/1ac1f20c-5c58-42b7-913f-3172cedb2214)

### RTL viewer

![image](https://github.com/AbdelrahmanKhaled826/stream_cipher/assets/66374409/2a62fd18-ebf6-4bee-86c0-a5a1ba6c01c1)


## simulation

![image](https://github.com/AbdelrahmanKhaled826/stream_cipher/assets/66374409/aa72f74c-5799-48c1-97cb-b2f2058966e3)

in my code ,i have 4 cases:
first if encryption_en  and decryption_en =1 ,so the data will be encrypted and convert it to cipher and decreypted it and return the data again,this is the master case.

![image](https://github.com/AbdelrahmanKhaled826/stream_cipher/assets/66374409/cde0b583-8ed6-4b8e-ae47-fc112324c4b7)


second case if encryption_en=1 only ,so the data will encrypted and the output will be cipher.

![image](https://github.com/AbdelrahmanKhaled826/stream_cipher/assets/66374409/f6a0948a-168f-4c87-b967-9b41fbb4412b)


anothe cases if encryption_en or  decryption_en=0 ,then the output will be the same input .

![image](https://github.com/AbdelrahmanKhaled826/stream_cipher/assets/66374409/bbc67668-659a-43b7-9991-563eed5f62e4)


