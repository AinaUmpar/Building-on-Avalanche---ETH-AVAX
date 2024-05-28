pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Degen is ERC20, Ownable {
    mapping(uint256 => uint256) public prices;
    mapping(uint256 => bool) public itemRedeemed;

    constructor(address firstOwner)
        ERC20("Degen", "DGN")
        Ownable(firstOwner)
    {
        prices[1] = 50;
        prices[2] = 100;
        prices[3] = 150;
    }

    function mint(address receiver, uint256 amount) public onlyOwner {
        require(amount > 0);
        _mint(receiver, amount);
    }

    function transfer(address to, uint256 amount) public override returns (bool) {
        _transfer(msg.sender, to, amount);
        return true;
    }

    function redeem(uint256 itemId) public {
        require(itemId >= 1 && itemId <= 3, "Invalid: itemId must be between 1 and 3");
        uint256 price = prices[itemId];
        require(balanceOf(msg.sender) >= price, "Not enough balance");
        require(!itemRedeemed[itemId], "This Item already redeemed");

        _transfer(msg.sender, address(this), price); 

        itemRedeemed[itemId] = true; 

    }

    function burn(uint256 amount) public {
        require(amount > 0 && balanceOf(msg.sender) >= amount);
        _burn(msg.sender, amount);
    }

    function balanceOfAddress(address account) public view returns (uint256) {
        return balanceOf(account);
    }
}
