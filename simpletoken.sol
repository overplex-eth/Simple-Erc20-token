pragma solidity ^0.8.0 #never use new versions

import 'https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol'

contract Token is ERC20 { //create and define the contract/token, in this case a ERC20
    address public admin; // this means I'm using a public address
    constructor () ERC20('<Token_Name>', <Token_Abbrevation> { // put here the name you want for your token
        _mint(msg.semder, 10000 * 10 *18); // mint process
     admin = msg.semder; // define the admin
     }
     
     function mint(address to, uint amount) external { // setting up function
          require(msg.sender == admin, 'only admin'); // put that only the admin can mint
          _mint(to, amount); // setup how much and where the token need to be minted
     
     function burn(uint amount) external { // setup a burn function, for destry the token
          _burn(msg,sender, amount);
     }
     
}
