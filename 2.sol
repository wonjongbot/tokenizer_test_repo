// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Counter {
   int public cur_state;
   function IncrementBy(int x) external {
     cur_state += x;
   }
   function DecrementBy(int x) external {
     cur_state -= x;
   }
}