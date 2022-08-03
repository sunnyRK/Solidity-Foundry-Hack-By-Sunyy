// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import { ERC20PermitUpgradeable } from "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/draft-ERC20PermitUpgradeable.sol";

contract TokenContract is ERC20PermitUpgradeable {
    function initialize() external initializer {
        __ERC20_init("xUSDLemma", "xUSDL");
        __ERC20Permit_init("xUSDLemma");
    }

    function mint(address account, uint256 amount) public {
        _mint(account, amount);
    }

    function burn(address account, uint256 amount) public {
        _burn(account, amount);
    }
}
