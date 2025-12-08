// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script} from "forge-std/Script.sol";
import {Counter} from "../src/Counter.sol";

contract CounterInteractionScript is Script {
    Counter public counter = Counter(0x503449fb1E8a79043c0F18e40A3D1Fb969F190EB);

    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        require(vm.envExists("NUMBER_VALUE"), "Env variable NUMBER_VALUE not set");
        uint256 value = vm.envUint("NUMBER_VALUE");

        counter.setNumber(value);

        vm.stopBroadcast();
    }
}
