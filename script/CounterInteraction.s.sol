// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script} from "forge-std/Script.sol";
import {Counter} from "../src/Counter.sol";

contract CounterInteractionScript is Script {
    Counter public counter = Counter(0x503449fb1E8a79043c0F18e40A3D1Fb969F190EB);

    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        counter.increment();

        vm.stopBroadcast();
    }
}
