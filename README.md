# Caesar's cipher encryption algorithm
The Caesar cipher is one of the simplest and most widely known encryption techniques. It shifts the characters of a text by adding a fixed value to the ASCII value of each character. Decrypting a text is simply shifting it back by the same amount.</br>
To pass an encrypted message from one person to another, it is first necessary that both parties have the *key* for the cipher, so that the sender may encrypt it and the receiver may decrypt it.</br>

## Caesar cipher function in MATLAB
The caesar function accepts two arguments:
  * the first is the character vector to be encrypted and
  * the second is the shift amount.</br>
The function works with characters with ASCII codes from 32 to 126. If the shifted code goes outside of this range, it should wrap around.</br></br>

Here is a quick example of the encryption and decryption steps involved with the caesar cipher. The text we will encrypt is 'THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG', with a shift amount of 23.
</br>

```
  code = caesar('THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG', 23);
  uncode = caesar(code, -23);
```

Output: </br>

```
  code = 
    'k_\7hl`Zb7Yifne7]fo7aldgj7fm\i7k_\7cXqp7[f^'
  uncode =
    'THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG'
```

