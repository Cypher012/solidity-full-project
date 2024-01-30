// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


contract test {
    struct Profile {
        string name;
        string phoneNumber;
        string email;
    }
    address addr = 0xf8e81D47203A594245E36C48e151709F0C19fBe8;
    
    mapping (address => Profile) public profileBook;

    function addProfile (string memory name, string memory phoneNumber, string memory email) external  {
    profileBook[msg.sender] = Profile(name, phoneNumber, email);
}


    function viewProfile () public  view returns (string memory,string memory,string memory) {
      Profile storage profile = profileBook[msg.sender];
      return (profile.name,profile.phoneNumber,profile.email);
    }

}
