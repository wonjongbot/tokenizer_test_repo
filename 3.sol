// declare solidity version
pragma solidity ^0.8.17;
// SPDX-License-Identifier: MIT

// solidity code for student identification with simple getter/setter functions
contract Student_id {
    string private name;
    string private netid;
    string private birthdate;

    function get_name() public view returns (string memory){
        return name;
    }
    function get_netid() public view returns (string memory){
        return netid;
    }
    function get_birthdate() public view returns (string memory){
        return birthdate;
    }
    function set_name(_newname) public{
        name = _newname;
    }
    function set_netid(newnetid) public{
        netid = newnetid;
    }
    function set_birthdate(newbirthdate) public{
        birthdate = newbirthdate;
    }


}