# Decoding input data

Input data on etherscan is only decoded if contract is verified
Otherwise looks like a bytecode
How do we decode it if it is not verified?

Input data contian funciton name, methodID, Input data type and name.

1. What is MethodId?

the first 4bytes of keccask256 of the method. remember how all common functions have the same signature.

`addToCurrentNumber(uint256)` => `0xa934486`

first 4bytes meaning 8 characters after `0x` is the methodId i.e. `a934486`

It is always the case.
EVM uses methodId to call the correct function.

Back in InputData, what do the rest of the characters mean (after the methodId)?

Remaining characters - split by 32byte lengths. this is what it means to have [0], [1], [2] etc in etherscan view.

```
0xa934486:

[0]: 000000....
[1]: 1231238sjiuadkasd...
[2]: 000000000000

```
you will need to compare this with ABI to know the method definition, and extract input values based on byte value.

byte32 values are read from left, others(uint, bool) are from right. drop empty bytes i.e. value `0000...` or `...0000`


(arrays and bytes and strings) input types are decoded differently.
* first 32byte of an array describes the length of the array. the next n-32bytes will be the values in the array.

* bytes input describe length of byte and value of byte.
- checkout any txn Input Data: https://etherscan.io/tx/0x74afb820513c0b8e3d8fcf2e2a0d478a3377ffe77424343dc6939541ed6d8b36
- Manual way: View input as Original;
- use this to split and decode byte: https://www.dcode.fr/text-splitter. set blocks size to **64**
- know the input types you are expecting from ABI
- for each split input value, apply the decoding methods differently (e.g. uint, array, bytes etc. ). extract value with: https://www.rapidtables.com/convert/number/hex-to-decimal.html

- or just Decode Input Data

still need the ABI.

To send Input Data string/text, you can do this on metamask > advanced settings > decode hex > send with "Hex Data" field


### Extras
- [x] VB burns SHIB [txn](https://etherscan.io/tx/0x125714bb4db48757007fff2671b37637bbfd6d47b3a4757ebbd0c5222984f905) but sends a 0 value [txn message](https://etherscan.io/tx/0x7a69f558bdc4aaf1e6bab9473c84cb2fddbd1e419c44d5c22eb88bedeb09657c)


