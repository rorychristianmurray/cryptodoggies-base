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

    Doggy[] doggies;

    mapping (uint 256 => address) private doggyIdToOwner
    mapping (address => uint256) private numOfDoggies;

    event DoggyCreated(uint256 _id, string _name, uint _age, bytes5 _dna);

    Doggy doggy1 = Doggy({
        age: age,
        name: name,
        dna: bytes5(0x000000000)
    })
    

    Doggy doggy1 = Doggy({
        age: maxAge,
        name: name2,
        dna: bytes5(0xfffffffff)
    })

    // if function is public, can be called by anyone
    // passing in the proper arguments

    function _createDoggy(uint _age, string _name, bytes5 _dna) public {
        Doggy memory _doggy = Doggy({
            age: _age,
            name: _name,
            dna: _dna
        })
        uint256 newDoggyId = doggies.push(_doggy) - 1;
        doggyIdToOwner[newDoggyId] = msg.sender;
        numOfDoggies[msg.sender] = numOfDoggies[msg.sender] + 1;

        DoggyCreated(newDoggyId, _name, _age, _dna)



    }

}