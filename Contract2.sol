// SPDX-License-Identifier:MIT
pragma solidity ^0.8.20;

contract Contract2 {
    address public addr = msg.sender;
    uint256 public bal = address(msg.sender).balance;
    bytes public codeBytes = address(this).code;
    bytes public codeBytes2;

    // address payable receiver = payable(0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2);

    // constructor() {}

    function getCode(address _addr) public {
        codeBytes2 = _addr.code;
    }

    function sendEtherThroughTransfer(address payable receiver) public payable {
        receiver.transfer(msg.value);
    }

    function sendEtherThroughSend(address payable receiver) public payable {
        bool sent = receiver.send(msg.value);
        require(sent, "Ether not sent");
    }

    function sendEtherThroughCall(address payable receiver) public payable {
        (bool sent, ) = receiver.call{value: msg.value}("");
        require(sent, "Ether not sent");
    }

    function getBalance(address _addr) public view returns (uint256) {
        return address(_addr).balance;
    }

    // receive() external payable {}
}
