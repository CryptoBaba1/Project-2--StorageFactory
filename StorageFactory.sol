//SPDX-License Identifier: MIT

pragma solidity ^0.6.0;
import "./SimpleStorage.sol";

contract StrorageFactory is SimpleStorage {

    SimpleStorage[] public simpleStorageArray;

    function createSSC() public {
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArray.push(simpleStorage);
    }

    function sfStore(uint256 _simpleStoreIndex, uint256 _simpleStoreNumber) public{

        SimpleStorage simpleStorage=SimpleStorage(address(simpleStorageArray[_simpleStoreIndex]));
        simpleStorage.store(_simpleStoreNumber);
}

function sfGet(uint256 _simpleStoreIndex) public view returns(uint256){
    return SimpleStorage(address(simpleStorageArray[_simpleStoreIndex])).retrive();

}

}
