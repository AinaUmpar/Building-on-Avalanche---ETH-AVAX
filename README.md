# Building-on-Avalanche---ETH-AVAX
  In this project, I write a smart contract to create my ERC20 token and deploy it using Remix. The contract encompasses essential functionalities: Firstly, it must enable the minting of tokens. Secondly, accounts should have the flexibility to transfer tokens among themselves. Moreover, it can redeem  their tokens. Additionally, it must have the capability to easily check its token balance.


## Description
  This Solidity contract goes by the name "Degen." It's an ERC20 token that comes with some extra features. With this contract, you can both create and destroy tokens. However, only the owner has the power to create new ones. Token holders have the freedom to transfer their tokens to others. On top of that, there's a cool function that allows you to exchange your tokens for specific items at certain prices. The owner also can set and retrieve these item prices. And hey, there's more! The contract also lets you check the token balance for a particular address.

## Usage/Features
1. As the owner, you'll have the power to create new tokens and get rid of existing ones.
2. To make sure you have control over important functions like creating and removing tokens, we'll use the Ownable feature.
3. Users can transfer tokens easily using the standard ERC20 transfer method.
4. If users want to exchange their tokens for specific items, they can do that.
5. As the owner, will have the authority to set and update the prices of the items.
6. Users can easily check their token balance to keep track of what they have.

### Executing program

* Use any Solidity compiler. (I used Remix IDE)
* search for the solidity compiler and create a file.
* Once done coding, compile it with the compiler in the same version of pragma solidity.
* Deploy & execute transactions window and click deploy.
* On the deployed contracts panel, check for the mint, burn, transfer, and redeem which allows you to put the address and the token.
* Once done minting, burning, transferring, and redeeming you can also check the balance of the address you input.


### NOTE

* Search for the green check in every transaction you make, if you see it then it means that the transaction is successful.

## Authors

Aina A. Umpar
email : 8215192@ntc.edu.ph
Discord : AinaUmpar1732


## License

Unlicensed.
