pragma solidity = 0.8.17;

contract HogwartsFactory {
 
   // declare our event here
   event Ewww_Slytherin_Detected(uint studentid, string name, string house);
 
   struct Wizard{
       string name;
       string house;
   }
 
   Wizard[] public wizards;
 
   function _insertHogwartsStudent(string memory _name, string memory _house) private {
       uint id = wizards.length - 1;
       if (keccak256(abi.encodePacked('Slytherin')) == keccak256(abi.encodePacked(_house))) {
           emit Ewww_Slytherin_Detected(id, _name, _house);
       }
   }
 
   function _HouseSelection(string memory _str) private pure returns (string memory) {
       uint _house = bytes(_str).length % 4;
       if (_house == 0) {
           return "Gryffindor";
       }
       else if (_house == 1) {
           return "Ravenclaw";
       }
       else if (_house == 2) {
           return "Hufflepuff";
       }
       else {
           return "Slytherin";
       }
   }
 
   function createRandomWizard(string memory _name) public {
       string memory house = _HouseSelection(_name);
       _insertHogwartsStudent(_name, house);
   }
 
}