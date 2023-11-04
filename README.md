# MyToken - A Simple Ethereum Token Contract

This repository contains a basic Ethereum token contract written in Solidity. The contract is named `MyToken` and provides a simple implementation for minting and burning tokens. It also includes some basic token properties.

## Contract Details

- **Contract Name**: MyToken
- **License**: MIT License

## Token Properties

- `Token_name`: The name of the token is set to "Sarvendra".
- `Token_abbr`: The token's abbreviation is set to "Singh".
- `Total_supply`: Initially, the total supply of the token is set to 0.

## Functions

### Minting Tokens

The `mint` function allows the contract owner to mint and distribute new tokens to a specified address. It increases the total supply of the token and updates the balance of the recipient.

```solidity
function mint(address _Addr, uint _Val) public {
    Total_supply += _Val;
    Balance[_Addr] += _Val;
}
```

### Burning Tokens
The burn function enables the contract owner to burn tokens from a specific address, provided the address has a sufficient balance. It decreases the total supply and reduces the balance of the address.



```solidity
function burn(address _Addr, uint _Val) public {
    if (Balance[_Addr] >= _Val) {
        Total_supply -= _Val;
        Balance[_Addr] -= _Val;
    }
}
```
