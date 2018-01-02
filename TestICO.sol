pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract TestICO is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function TestICO(address _owner)  UpgradeableToken(_owner) {
    name = "TestICO";
    symbol = "TICO";
    totalSupply = 1000000000000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}