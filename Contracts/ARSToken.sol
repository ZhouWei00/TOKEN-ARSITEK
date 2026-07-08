// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

/// @title ARSITEK Token
/// @notice Fixed supply BEP-20 token on BNB Smart Chain
contract ARSToken is ERC20, Ownable {
    uint256 public constant INITIAL_SUPPLY = 1_000_000_000 * 10 ** 18;

    constructor(address initialOwner)
        ERC20("ARSITEK", "ARS")
        Ownable(initialOwner)
    {
        _mint(initialOwner, INITIAL_SUPPLY);
    }
}