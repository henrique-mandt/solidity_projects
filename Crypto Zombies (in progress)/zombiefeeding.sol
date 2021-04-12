//INCOMPLETE (IN PROGRESS)
pragma solidity >=0.5.0 <0.6.0;

//imports
import "./zombiefactory.sol";

//contract
contract ZombieFeeding is ZombieFactory {
    //functions
    function feedAndMultiply(uint _zombieId, uint _targetDna) public {
        require(msg.sender == zombieToOwner[_zombieId]);
        Zombie storage myZombie = zombies[_zombieId];
        _targetDna = _targetDna % dnaModulus;
        uint newDna = (myZombie.dna + _targetDna) / 2;
        _createZombie("NoName", newDna);
    }
}
