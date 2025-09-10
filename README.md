# Staking Platform - Smart Contract Documentation

## Overview

This Staking Platform is a comprehensive decentralized application built on Ethereum that enables users to create custom staking pools with flexible reward mechanisms. The platform supports both ERC20 tokens and native currency (ETH) for staking and rewards.

## Contract: staking.sol

The main staking contract that allows users to create and participate in staking pools with customizable parameters.

### Key Features

- **Custom Staking Pools**: Users can create their own staking pools with custom parameters
- **Flexible Reward Systems**: Support for both fixed amount and percentage-based rewards
- **Multiple Time Durations**: Daily, weekly, monthly, and yearly reward distributions
- **Dual Token Support**: Works with both ERC20 tokens and native currency (ETH)
- **Pool Management**: Pool creators can modify pool parameters and add liquidity
- **Secure Staking**: Funds are held securely in the contract with proper access controls

### Data Structures

#### Token Information
```solidity
struct token {
    address tokenAddress;
    uint256 decimal;
    string symbol;
    string name;
}
```

#### Pool Structure
```solidity
struct pool {
    token rewardTokenInfo;    // Reward token details
    token stakeTokenInfo;     // Staking token details
    uint256 yield;            // Reward amount/percentage
    uint256 yieldType;        // 1 = fixed amount, 2 = percentage
    uint256 yieldDuration;    // 1 = daily, 2 = weekly, 3 = monthly, 4 = yearly
    uint256[2] time;          // Start and end times
    uint256 stakers;          // Number of stakers
    uint256 totalStaked;      // Total staked amount
    uint256 liquidity;        // Available reward liquidity
    bool locked;              // Pool lock status
    address owner;            // Pool creator
    uint256 poolId;           // Pool identifier
}
```

#### User Data
```solidity
struct userData {
    uint256 stakedAmount;     // Total amount staked
    uint256 lastStaked;       // Last staked amount
    uint256 reward;           // Accumulated rewards
    uint256 timeLastStaked;   // Last stake time
}
```

### Main Functions

#### Pool Creation
```solidity
function createPool(
    address _rewardAddress,    // Reward token address (0 for ETH)
    address _stakingToken,     // Staking token address (0 for ETH)
    uint256 _liquidity,        // Initial reward liquidity
    uint256 _yield,            // Reward amount/percentage
    uint256 _yieldType,        // 1 = fixed, 2 = percentage
    uint256 _yieldDuration,    // Reward frequency
    uint256 _timeDuration      // Pool duration in days
) external payable returns (bool)
```

#### Staking
```solidity
function stakePool(
    uint256 _poolId,          // Pool ID to stake in
    uint256 _amountToStake    // Amount to stake
) external payable returns (bool)
```

#### Unstaking
```solidity
function unstake(
    uint256 _poolId,          // Pool ID to unstake from
    uint256 amount            // Amount to unstake
) external returns (bool)
```

#### Reward Withdrawal
```solidity
function withdraw(
    uint256 _poolId           // Pool ID to withdraw from
) external returns (bool)
```

#### Pool Modification
```solidity
function modifyStakePool(
    uint256 poolId,           // Pool ID to modify
    uint256 _liquidity,       // Additional liquidity to add
    bool _lock,               // New lock status
    uint256 _duration         // Additional duration in days
) payable external returns(bool)
```

### Reward Calculation

The contract implements sophisticated reward calculation based on:

1. **Yield Type**:
   - Fixed amount: `reward = yield * duration_multiplier * staked_amount`
   - Percentage: `reward = (staked_amount * yield) / (100 * 10^decimals) * duration_multiplier`

2. **Duration Multipliers**:
   - Daily: 1 day = 86400 seconds
   - Weekly: 1 week = 604800 seconds  
   - Monthly: 1 month = 2,678,400 seconds
   - Yearly: 1 year = 31,536,000 seconds

### Installation & Deployment

#### Prerequisites
- Node.js and npm
- Hardhat or Truffle framework
- OpenZeppelin contracts

#### Steps
1. Install dependencies:
```bash
npm install @openzeppelin/contracts
```

2. Compile contract:
```bash
npx hardhat compile
```

3. Deploy contract:
```bash
npx hardhat run scripts/deploy.js --network <network-name>
```

### Usage Workflow

#### For Pool Creators
1. **Create Pool**: Call `createPool()` with desired parameters
2. **Add Liquidity**: Fund the pool with reward tokens
3. **Manage Pool**: Use `modifyStakePool()` to adjust parameters
4. **Monitor**: Track pool performance through getter functions

#### For Stakers
1. **Find Pools**: Use `getPool()` or `getPoolWithUser()` to discover pools
2. **Stake**: Call `stakePool()` with desired amount
3. **Earn Rewards**: Rewards accumulate based on pool parameters
4. **Withdraw**: Call `withdraw()` to claim rewards or `unstake()` to remove funds

### Security Features

- **Time-locked Staking**: Pools have defined start and end times
- **Liquidity Checks**: Ensures sufficient rewards before staking
- **Access Controls**: Only pool owners can modify pool parameters
- **SafeMath**: Prevents overflow/underflow vulnerabilities
- **Fund Security**: Proper token transfer mechanisms

### Getter Functions

The contract provides comprehensive view functions:
- `getPool()`: List all available pools
- `getPoolWithUser(address)`: List pools with user-specific data
- `getPoolWithId(uint256)`: Get specific pool details
- `getPoolWithIdAndUser(uint256, address)`: Get pool details with user info
- `getUserStakeDetails(address, uint256)`: Get user's staking details

### Important Notes

1. **Approvals**: Users must approve token transfers before staking
2. **Native Currency**: Use address(0) for ETH operations
3. **Time Calculations**: All durations are calculated in seconds
4. **Decimal Handling**: Proper decimal adjustment for percentage calculations
5. **Gas Considerations**: Complex operations may require significant gas

### License

MIT License - See SPDX-License-Identifier in contract headers

### Audit Notes

1. **Professional Audit**: Conduct a thorough security audit
2. **Testing**: Extensive testing on testnets before mainnet deployment
3. **Upgradeability**: Consider implementing proxy patterns for future upgrades

### Future Improvements

- **Auto-compounding**: Automatic reward reinvestment
- **Tiered Rewards**: Different reward rates based on stake amount
- **Governance Features**: Community voting on pool parameters
- **Multi-signature**: Enhanced security for pool management
- **Flash Loan Protection**: Mechanisms to prevent reward manipulation
- **Cross-chain**: Support for multiple blockchain networks

## Conclusion

This staking platform offers a robust and flexible solution for decentralized staking with customizable parameters. Its comprehensive feature set and secure implementation make it suitable for various staking scenarios, from simple fixed-rate staking to complex reward distribution mechanisms.
