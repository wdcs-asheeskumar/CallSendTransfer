// SPDX-License-Identifier:MIT
pragma solidity ^0.8.20;

contract Contract1 {
    receive() external payable {}

    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }
}
