// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.1 <0.9.0;

import 'https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol';

contract SightToken is ERC20{
    address public admin;
    constructor() ERC20('SightCoin', 'SII'){
        _mint(msg.sender, 10000 * 10 ** 18);
        admin = msg.sender;
    }

    function mint(address to, uint amount) external{
        require(msg.sender==admin, 'sender must be admin');
        _mint(to, amount);
    }

    function burn(uint amount) external{
        _burn(msg.sender, amount);
    }
}