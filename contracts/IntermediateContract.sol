//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;

contract IntermediateContract {
    address internal contractAddress =
        0xcF469d3BEB3Fc24cEe979eFf83BE33ed50988502;

    function callContract() external {
        bytes memory payload = abi.encodeWithSignature("attempt()");
        (bool success, ) = contractAddress.call(payload);
        require(success, "Contract call failed");
    }
}
