pragma solidity ^0.4.18;

contract CryptoDoggies {
    uint age = 10;
    uint maxAge = age * 5;

    string name = 'Rory'
    string name2 = 'Amy'

    uint8 = 2 // 8 bit int
    uint256 = 18282 // goes up to 256
    bytes3 = 'stores 3 bytes of information'

    // structs are similar to classes

    struct Doggy {
        uint age;
        string name;
        bytes5 dna;
    }

    Doggy doggy1 = Doggy({
        age: age,
        name: name,
        dna: bytes5(0x000000000)
    })
    

    Doggy doggy1 = Doggy({
        age: m,
        name: name,
        dna: bytes5(0x000000000)
    })

}