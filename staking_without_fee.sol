/**
 *Submitted for verification at polygonscan.com on 2023-01-08
*/

// File: @openzeppelin/contracts/utils/math/SafeMath.sol


// OpenZeppelin Contracts (last updated v4.6.0) (utils/math/SafeMath.sol)

pragma solidity ^0.8.0;

// CAUTION
// This version of SafeMath should only be used with Solidity 0.8 or later,
// because it relies on the compiler's built in overflow checks.

/**
 * @dev Wrappers over Solidity's arithmetic operations.
 *
 * NOTE: `SafeMath` is generally not needed starting with Solidity 0.8, since the compiler
 * now has built in overflow checking.
 */
library SafeMath {
    /**
     * @dev Returns the addition of two unsigned integers, with an overflow flag.
     *
     * _Available since v3.4._
     */
    function tryAdd(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        unchecked {
            uint256 c = a + b;
            if (c < a) return (false, 0);
            return (true, c);
        }
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, with an overflow flag.
     *
     * _Available since v3.4._
     */
    function trySub(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        unchecked {
            if (b > a) return (false, 0);
            return (true, a - b);
        }
    }

    /**
     * @dev Returns the multiplication of two unsigned integers, with an overflow flag.
     *
     * _Available since v3.4._
     */
    function tryMul(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        unchecked {
            // Gas optimization: this is cheaper than requiring 'a' not being zero, but the
            // benefit is lost if 'b' is also tested.
            // See: https://github.com/OpenZeppelin/openzeppelin-contracts/pull/522
            if (a == 0) return (true, 0);
            uint256 c = a * b;
            if (c / a != b) return (false, 0);
            return (true, c);
        }
    }

    /**
     * @dev Returns the division of two unsigned integers, with a division by zero flag.
     *
     * _Available since v3.4._
     */
    function tryDiv(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        unchecked {
            if (b == 0) return (false, 0);
            return (true, a / b);
        }
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers, with a division by zero flag.
     *
     * _Available since v3.4._
     */
    function tryMod(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        unchecked {
            if (b == 0) return (false, 0);
            return (true, a % b);
        }
    }

    /**
     * @dev Returns the addition of two unsigned integers, reverting on
     * overflow.
     *
     * Counterpart to Solidity's `+` operator.
     *
     * Requirements:
     *
     * - Addition cannot overflow.
     */
    function add(uint256 a, uint256 b) internal pure returns (uint256) {
        return a + b;
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, reverting on
     * overflow (when the result is negative).
     *
     * Counterpart to Solidity's `-` operator.
     *
     * Requirements:
     *
     * - Subtraction cannot overflow.
     */
    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
        return a - b;
    }

    /**
     * @dev Returns the multiplication of two unsigned integers, reverting on
     * overflow.
     *
     * Counterpart to Solidity's `*` operator.
     *
     * Requirements:
     *
     * - Multiplication cannot overflow.
     */
    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
        return a * b;
    }

    /**
     * @dev Returns the integer division of two unsigned integers, reverting on
     * division by zero. The result is rounded towards zero.
     *
     * Counterpart to Solidity's `/` operator.
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function div(uint256 a, uint256 b) internal pure returns (uint256) {
        return a / b;
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers. (unsigned integer modulo),
     * reverting when dividing by zero.
     *
     * Counterpart to Solidity's `%` operator. This function uses a `revert`
     * opcode (which leaves remaining gas untouched) while Solidity uses an
     * invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function mod(uint256 a, uint256 b) internal pure returns (uint256) {
        return a % b;
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, reverting with custom message on
     * overflow (when the result is negative).
     *
     * CAUTION: This function is deprecated because it requires allocating memory for the error
     * message unnecessarily. For custom revert reasons use {trySub}.
     *
     * Counterpart to Solidity's `-` operator.
     *
     * Requirements:
     *
     * - Subtraction cannot overflow.
     */
    function sub(
        uint256 a,
        uint256 b,
        string memory errorMessage
    ) internal pure returns (uint256) {
        unchecked {
            require(b <= a, errorMessage);
            return a - b;
        }
    }

    /**
     * @dev Returns the integer division of two unsigned integers, reverting with custom message on
     * division by zero. The result is rounded towards zero.
     *
     * Counterpart to Solidity's `/` operator. Note: this function uses a
     * `revert` opcode (which leaves remaining gas untouched) while Solidity
     * uses an invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function div(
        uint256 a,
        uint256 b,
        string memory errorMessage
    ) internal pure returns (uint256) {
        unchecked {
            require(b > 0, errorMessage);
            return a / b;
        }
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers. (unsigned integer modulo),
     * reverting with custom message when dividing by zero.
     *
     * CAUTION: This function is deprecated because it requires allocating memory for the error
     * message unnecessarily. For custom revert reasons use {tryMod}.
     *
     * Counterpart to Solidity's `%` operator. This function uses a `revert`
     * opcode (which leaves remaining gas untouched) while Solidity uses an
     * invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function mod(
        uint256 a,
        uint256 b,
        string memory errorMessage
    ) internal pure returns (uint256) {
        unchecked {
            require(b > 0, errorMessage);
            return a % b;
        }
    }
}

// File: contracts/IERC20.sol


// OpenZeppelin Contracts (last updated v4.6.0) (token/ERC20/IERC20.sol)

pragma solidity ^0.8.0;

/**
 * @dev Interface of the ERC20 standard as defined in the EIP.
 */
interface IERC20 {
    /**
     * @dev Emitted when `value` tokens are moved from one account (`from`) to
     * another (`to`).
     *
     * Note that `value` may be zero.
     */
    event Transfer(address indexed from, address indexed to, uint256 value);

    /**
     * @dev Emitted when the allowance of a `spender` for an `owner` is set by
     * a call to {approve}. `value` is the new allowance.
     */
    event Approval(address indexed owner, address indexed spender, uint256 value);

    /**
     * @dev Returns the name of tokens.
     */
    function name() external view returns (string memory);
    /**
     * @dev Returns the symbol of tokens.
     */
    function symbol() external view returns (string memory);
    /**
     * @dev Returns the decimals of tokens.
     */
    function decimals() external view returns (uint256);
    /**
     * @dev Returns the amount of tokens in existence.
     */
    function totalSupply() external view returns (uint256);

    /**
     * @dev Returns the amount of tokens owned by `account`.
     */
    function balanceOf(address account) external view returns (uint256);

    /**
     * @dev Moves `amount` tokens from the caller's account to `to`.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transfer(address to, uint256 amount) external returns (bool);

    /**
     * @dev Returns the remaining number of tokens that `spender` will be
     * allowed to spend on behalf of `owner` through {transferFrom}. This is
     * zero by default.
     *
     * This value changes when {approve} or {transferFrom} are called.
     */
    function allowance(address owner, address spender) external view returns (uint256);

    /**
     * @dev Sets `amount` as the allowance of `spender` over the caller's tokens.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * IMPORTANT: Beware that changing an allowance with this method brings the risk
     * that someone may use both the old and the new allowance by unfortunate
     * transaction ordering. One possible solution to mitigate this race
     * condition is to first reduce the spender's allowance to 0 and set the
     * desired value afterwards:
     * https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
     *
     * Emits an {Approval} event.
     */
    function approve(address spender, uint256 amount) external returns (bool);

    /**
     * @dev Moves `amount` tokens from `from` to `to` using the
     * allowance mechanism. `amount` is then deducted from the caller's
     * allowance.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transferFrom(address from, address to, uint256 amount) external returns (bool);
}
// File: contracts/Staking.sol


pragma solidity 0.8.17;



/*
    This contract acts as a manual staking contract
    Usees can create individual staking pool and specify
    the yields and staking mechanism 
*/

contract staking {
    using SafeMath for uint256;
    //Staking pool structure
    struct token {
        address tokenAddress;
        uint256 decimal;
        string  symbol;
        string  name;
    }
    struct pool {
        token rewardTokenInfo;
        token stakeTokenInfo;
        uint256 yield;
        uint256 yieldType;
        uint256 yieldDuration;
        uint256[2] time;
        uint256 stakers;
        uint256 totalStaked;
        uint256 liquidity;
        bool locked;
        address owner;
        uint256 poolId;
    }
    //Staking pool reward data structure
    struct poolRewards {
        mapping(address => uint256) rewards;
        mapping(address => uint256) stakeTime;
        mapping(address => uint256) stakeAmount;
        mapping(address => uint256) totalAmount;
        mapping(address => bool) hasCalculateReward;
        mapping(address => bool) isStaked;
    }
    //to format user data
    struct userData {
        uint256 stakedAmount;
        uint256 lastStaked;
        uint256 reward;
        uint256 timeLastStaked;
    }
    //to format pool with user data
    struct poolUser {
        pool _pool;
        uint256 totalStaked;
        uint256 reward;
        bool ended;
    }
    mapping(uint256 => pool) private STAKING_POOL;
    mapping(uint256 => poolRewards) private reward;
    uint256[] private ids;
    uint256 private poolIdentifier;
    uint256 public CREATION_FEE = 0;
    address public FEE_RECEIVER;
    address public owner;
    /*
        this functions helps create staking pool
        Users need to specify the rewardToken Address
        StakingToken address, liquidity amount, Yield, YieldType(1 | 2)
        anmd duration
    */
    constructor (address _feeReceiver, address _owner) {
        owner = _owner;
        FEE_RECEIVER = _feeReceiver;
    }
    function createPool(address _rewardAddress, address _stakingToken, uint256 _liquidity, uint256 _yield, uint256 _yieldType,uint256 _yieldDuration, uint256 _timeDuration) external payable returns (bool) {
        IERC20 _token;token memory _rewardTokenInfo;token memory _stakeTokenInfo;
        //check if the user has enough liquidity
        if(_rewardAddress == address(0)){
            //using native token
            require(msg.sender.balance >= (_liquidity + CREATION_FEE), "Insufficient balance for liquidity and creation fee");
            //create token info
            _rewardTokenInfo = token (
                address(0), 18, "", ""
            );
        }
        else {
            //check if the creation fee was paid
            //require(msg.sender.balance >= CREATION_FEE, "Insufficient creation fee");
            _token = IERC20(_rewardAddress);
            require(_token.balanceOf(msg.sender) >= _liquidity, "Insufficient liquidity");
            //create token info
            _rewardTokenInfo = token (
               _rewardAddress, _token.decimals(), _token.symbol(), _token.name()
            );
        }
        //check if the stakingToken is valid
        if(_stakingToken != address(0)){
             _token = IERC20(_stakingToken);
             require(_token.balanceOf(msg.sender) >= 0, "Invalid staking token");
             //create token info
            _stakeTokenInfo = token (
               _stakingToken, _token.decimals(), _token.symbol(), _token.name()
            );
        }
        else {
            //create token info
            _stakeTokenInfo = token (
                address(0), 18, "", ""
            );
        }
        //check if yield was set
        require(_yield > 0, "Insufficient yield set");
        ids.push(poolIdentifier);
        STAKING_POOL[poolIdentifier] = pool(
                _rewardTokenInfo, _stakeTokenInfo,
                _yield, _yieldType, _yieldDuration,
                [block.timestamp, block.timestamp + (_timeDuration * 1 days)], 0,
                0, _liquidity, false, msg.sender, poolIdentifier
            );
        poolIdentifier++;
        if(_rewardAddress == address(0)){
            require(msg.value >= (_liquidity + CREATION_FEE), "Insufficient amount sent for liquidity and creation fee");
        }
        else{
            //require(msg.value >= CREATION_FEE, "Insufficient amount sent for creation fee");
            //lock reward tokens in contract
            IERC20(_rewardAddress).transferFrom(msg.sender, address(this), _liquidity);
        }
        //transaction the creation fee to the fee receiver
        //payable(FEE_RECEIVER).transfer(CREATION_FEE);
        return true;
    }
    /*
        this function stakes on pool
        It uses the poolId to access the staking pool
        Staking is only allowed when;
            The staking pool is not locked
            There is enough liquidity in the staking pool
            Sufficient staking tokens 
            Staking has not expired
    */
    function stakePool(uint256 _poolId, uint256 _amountToStake) external payable returns (bool){
        //first get the pool details
        pool memory _pool = STAKING_POOL[_poolId];
        //check if there is still liquidity
        require(_pool.liquidity >= 0, "Insufficient liquidity in stake pool");
        //check if the staking is expired
        require(_pool.time[1] >= block.timestamp, "Unable to stake during expiration period");
        //check if the staking has not been locked
        require(!_pool.locked, "This staking has been locked");
        //check if user has enough tokens to stake
        if(STAKING_POOL[_poolId].stakeTokenInfo.tokenAddress == address(0)) {
            require(msg.sender.balance >= _amountToStake, "Insufficient balance");
        }
        else {
            require(tokenActionBalance(_pool.stakeTokenInfo.tokenAddress, msg.sender) >= _amountToStake, "Insufficient balance");
        }
        updateReward(_poolId);
        reward[_pool.poolId].stakeTime[msg.sender] = block.timestamp; //saving stake time
        reward[_pool.poolId].stakeAmount[msg.sender] += _amountToStake; //saving the current unrewarded stake amount
        reward[_pool.poolId].totalAmount[msg.sender] += _amountToStake; //saving total stake amount
        //update staking pool details
        STAKING_POOL[_poolId].totalStaked += _amountToStake;
        if(!reward[_pool.poolId].isStaked[msg.sender]){
            STAKING_POOL[_poolId].stakers += 1;
        }
        reward[_pool.poolId].isStaked[msg.sender] = true;
        //transfer token to contract
        if(STAKING_POOL[_poolId].stakeTokenInfo.tokenAddress != address(0)) {
            IERC20(_pool.stakeTokenInfo.tokenAddress).transferFrom(msg.sender, address(this), _amountToStake);
        }
        return true;
        
    }
    // // /*
    //     To unstake
    //     This will withdraw the specified staking amount
    //     Unstake would work weven when the staking is locked and has expired
    // */
    function unstake(uint256 _poolId, uint256 amount) external returns (bool) {
        pool memory _pool = STAKING_POOL[_poolId];
        poolRewards storage _reward = reward[_pool.poolId];
        require(_reward.totalAmount[msg.sender] >= amount, "Insufficient staked balance");
        if(STAKING_POOL[_poolId].stakeTokenInfo.tokenAddress == address(0)) {
            require(address(this).balance >= amount, "Insufficient staked tokens in contract");
        }
        else {
            require(IERC20(_pool.stakeTokenInfo.tokenAddress).balanceOf(address(this)) >= amount, "Insufficient staked tokens in contract");
        }
        //subtract the tokens unstaked
        updateReward(_poolId);
        reward[_pool.poolId].totalAmount[msg.sender] = reward[_pool.poolId].totalAmount[msg.sender].sub(amount);
        //subtract the total stake tokens in pool
        STAKING_POOL[_poolId].totalStaked = STAKING_POOL[_poolId].totalStaked.sub(amount);
        //remove as stakers
        if(reward[_pool.poolId].totalAmount[msg.sender] <= 0){
            STAKING_POOL[_poolId].stakers = STAKING_POOL[_poolId].stakers.sub(1);
            reward[_pool.poolId].isStaked[msg.sender] = false;
        }
        if(STAKING_POOL[_poolId].stakeTokenInfo.tokenAddress != address(0)) {
            IERC20(_pool.stakeTokenInfo.tokenAddress).transfer(msg.sender, amount);
        }
        else {
            payable(msg.sender).transfer(amount);
        }
        return true;
    }
    // /*
    //     Withdraw rewards
    //     This will withdraw the specified reward amount
    //     This would work only when
    //         The staking is active or expired
    //         The staking has not been locked
    // */
    function withdraw(uint256 _poolId) external returns (bool) {
        updateReward(_poolId); //update rewards
        pool memory _pool = STAKING_POOL[_poolId];
        poolRewards storage _reward = reward[_pool.poolId];
        uint256 amount = _reward.rewards[msg.sender];
        require(!_pool.locked, "This staking has been locked");
        require(_reward.rewards[msg.sender] >= 0, "Insufficient reward balance");
        //set the reward tokens balance to 
        reward[_pool.poolId].rewards[msg.sender] = 0;
        if(STAKING_POOL[_poolId].rewardTokenInfo.tokenAddress != address(0)) {
            IERC20(_pool.rewardTokenInfo.tokenAddress).transfer(msg.sender, amount);
        }
        else {
            payable(msg.sender).transfer(amount);
        }
         return true;
    }
    // /*
    //     this function updates rewards
    //     It calculates rewards based on the time duration of the stake token
    //     RewardFormuala = yieldPerDay * durationInDays * stakeAmount
    // */
    function updateReward(uint256 poolId) internal {
        pool memory _pool = STAKING_POOL[poolId];
        poolRewards storage _reward = reward[_pool.poolId];
        if(_reward.stakeTime[msg.sender] > 0 && _reward.totalAmount[msg.sender] > 0) {
                uint256 _no_of_days = block.timestamp - _reward.stakeTime[msg.sender];
                bool _canCalculate = false;
                //check if it meets the staking duration
                if(_pool.yieldDuration == 1 && _no_of_days >= 86400){_canCalculate = true;_no_of_days = _no_of_days/86400;} //pass daily rewards
                if(_pool.yieldDuration == 2 && _no_of_days >= 604800){_canCalculate = true;_no_of_days = _no_of_days/604800;} //pass weekly rewards
                if(_pool.yieldDuration == 3 && _no_of_days >= 2678400){_canCalculate = true;_no_of_days = _no_of_days/2678400;} //pass monthly rewards
                if(_pool.yieldDuration == 4 && _no_of_days >= 31536000){_canCalculate = true;_no_of_days = _no_of_days/31536000;} //pass yearly rewards
                if(_canCalculate) {
                    uint256 _rew;
                    if(_pool.yieldType == 1) {
                        //using reward by unit
                        _rew = _pool.yield * _no_of_days * reward[_pool.poolId].totalAmount[msg.sender];
                    }
                    else{
                        //using reward by percent, find reward for a duration
                        uint256 _mul = 10**_pool.stakeTokenInfo.decimal; //to allow for 6 decimals
                        _rew = (reward[_pool.poolId].totalAmount[msg.sender] * _pool.yield) / (100 * _mul);
                        //multiply by num of yield duration
                        _rew = _rew * _no_of_days;
                    }
                    //check if it still has enough liquidity
                    if(_pool.liquidity >= _rew) {
                        //there is still enough liquidity, update rewards
                        reward[_pool.poolId].rewards[msg.sender] += _rew;
                        //reset the staking time,  
                        reward[_pool.poolId].stakeTime[msg.sender] =  reward[_pool.poolId].stakeTime[msg.sender].add(_no_of_days * 1 days);
                        //reduce the liquidity
                        STAKING_POOL[poolId].liquidity = STAKING_POOL[poolId].liquidity.sub(_rew);
                    }
                }
        }
    }
    // /*
    //     To modify the staking, can only be done by the onwer of the staking pool
    //     action specify what needs to be done;
    //         1: add liquidity
    //         2: Extend duration
    //         3: change yield value
    //         4: change yield type
    //         5: lock Token
    // */
    function modifyStakePool(uint256 poolId, uint256 _liquidity, bool _lock, uint256 _duration) payable external returns(bool) {
        pool memory _pool = STAKING_POOL[poolId];
        //to add liquidity
        if(_liquidity > 0){
            //wants to add liquidity
            if(STAKING_POOL[poolId].rewardTokenInfo.tokenAddress != address(0)) {
                //check if user has enough balance to add liquidity
                require(IERC20(_pool.rewardTokenInfo.tokenAddress).balanceOf(msg.sender) >= _liquidity, "Insufficient balance");
                IERC20(_pool.rewardTokenInfo.tokenAddress).transferFrom(msg.sender, address(this), _liquidity);
            }
            else {
                //using native currency
                require(msg.sender.balance >= _liquidity, "Insufficient balance");
            }
            STAKING_POOL[poolId].liquidity = STAKING_POOL[poolId].liquidity.add(_liquidity);
        }
        //to lock the staking
        STAKING_POOL[poolId].locked = _lock;
        //to extend duration
        if(block.timestamp > STAKING_POOL[poolId].time[1] && _duration > 0) {
            //has expired, set to current time to allow adding duration
            STAKING_POOL[poolId].time[1] = block.timestamp;
        }
        STAKING_POOL[poolId].time[1] = STAKING_POOL[poolId].time[1].add(_duration * 1 days);
        return true;
    }
    //utilities functions
    function tokenActionBalance(address _address, address _user) private view returns (uint256){
        if(_address == address(0)) {
            //dealing with native currencies
            return _user.balance;
        }
        else {
            return IERC20(_address).balanceOf(_user);
        }
    }
    //to change the creation fee
    function setCreationFee(uint256 _fee) external {
        require(msg.sender == owner, "Only owner allowed to do this");
        CREATION_FEE = _fee;
    }
    //to chnage the owner
    function changeOwner(address newOwner) external {
        require(msg.sender == owner, "Only owner allowed to do this");
        owner = newOwner;
    }
    //getter functions
    //this functions gets the list of pools
    function getPool() external view returns (pool[] memory){
        uint256 count = ids.length;
        //apend data
        pool[] memory _pools = new pool[](count);
        count = 0;
        for(uint256 i=0;i < ids.length;i++){
            _pools[count] = STAKING_POOL[ids[i]];
            count++;
        }
        return _pools;
    }
    //this functions gets the list of pools with info based on the set address
    function getPoolWithUser(address _user) external view returns (poolUser[] memory){
        uint256 count = ids.length;
        //apend data
        poolUser[] memory _pools = new poolUser[](count);
        count = 0;
        for(uint256 i=0;i < ids.length;i++){
            _pools[count] = poolUser(
                STAKING_POOL[ids[i]],
                reward[STAKING_POOL[ids[i]].poolId].totalAmount[_user],
                getReward(ids[i], _user),
                block.timestamp > STAKING_POOL[ids[i]].time[1]
            );
            count++;
        }
        return _pools;
    }
    //this functions gets a staking pool with id and user details
    function getPoolWithIdAndUser(uint256 poolId, address _user) external view returns (poolUser memory _pool){
         _pool = poolUser(
            STAKING_POOL[poolId],
            reward[STAKING_POOL[poolId].poolId].totalAmount[_user],
            getReward(poolId, _user),
            block.timestamp > STAKING_POOL[poolId].time[1]
        );
        return _pool;
    }
    //this functions gets a staking pool with id
    function getPoolWithId(uint256 poolId) external view returns (pool memory _pool){
        _pool = STAKING_POOL[poolId];
        return _pool;
    }
    // //this function gets a user saking details
    function getUserStakeDetails(address _staker, uint256 poolId) external view returns(userData memory _userData) {
       poolRewards storage _reward = reward[poolId];
       _userData = userData(
            _reward.totalAmount[_staker],
            _reward.stakeAmount[_staker],
            getReward(poolId, _staker),
            _reward.stakeTime[_staker]
        );
        return _userData;
    }
    //to get current accumulated rewards
    function getReward(uint256 poolId, address user) internal view returns (uint256){
        pool memory _pool = STAKING_POOL[poolId];
        poolRewards storage _reward = reward[_pool.poolId];
        if(_reward.stakeTime[user] > 0 && _reward.totalAmount[user] > 0) {
                uint256 _no_of_days = block.timestamp - _reward.stakeTime[user];
                bool _canCalculate = false;
                //check if it meets the staking duration
                if(_pool.yieldDuration == 1 && _no_of_days >= 86400){_canCalculate = true;_no_of_days = _no_of_days/86400;} //pass daily rewards
                if(_pool.yieldDuration == 2 && _no_of_days >= 604800){_canCalculate = true;_no_of_days = _no_of_days/604800;} //pass weekly rewards
                if(_pool.yieldDuration == 3 && _no_of_days >= 2678400){_canCalculate = true;_no_of_days = _no_of_days/2678400;} //pass monthly rewards
                if(_pool.yieldDuration == 4 && _no_of_days >= 31536000){_canCalculate = true;_no_of_days = _no_of_days/31536000;} //pass yearly rewards
                if(_canCalculate) {
                    uint256 _rew;
                    if(_pool.yieldType == 1) {
                        //using reward by unit
                        _rew = _pool.yield * _no_of_days * reward[_pool.poolId].totalAmount[user];
                    }
                    else{
                        //using reward by percent, find reward for a duration
                        uint256 _mul = 10**_pool.stakeTokenInfo.decimal; //to allow for 6 decimals
                        _rew = (reward[_pool.poolId].totalAmount[user] * _pool.yield) / (100 * _mul);
                        //multiply by num of yield duration
                        _rew = _rew * _no_of_days;
                    }
                    //check if it still has enough liquidity
                    if(_pool.liquidity >= _rew) {
                        return reward[_pool.poolId].rewards[user].add(_rew);
                        
                    }
                }
        }
        return reward[_pool.poolId].rewards[user];
    }
}