// main excerpt

contract DragonLair is ERC20("Dragon QUICK", "dQUICK") {
    using SafeMath for uint256;
    IERC20 public quick;

    constructor(IERC20 _quick) public {
        quick = _quick;
    }

    // Enter the lair. Pay some QUICK. Earn some dragon QUICK.
    function enter(uint256 _quickAmount) external {
        uint256 totalQuick = quick.balanceOf(address(this));
        uint256 totalDQuick = totalSupply();
        if (totalDQuick == 0 || totalQuick == 0) {
            _mint(msg.sender, _quickAmount);
        } else {
            uint256 dQuickAmount = _quickAmount.mul(totalDQuick).div(totalQuick);
            _mint(msg.sender, dQuickAmount);
        }
        quick.transferFrom(msg.sender, address(this), _quickAmount);
    }

    // Leave the lair. Claim back your QUICK.
    function leave(uint256 _dQuickAmount) external {
        uint256 totalDQuick = totalSupply();
        uint256 quickAmount = _dQuickAmount.mul(quick.balanceOf(address(this))).div(totalDQuick);
        _burn(msg.sender, _dQuickAmount);
        quick.transfer(msg.sender, quickAmount);
    }

    // returns the total amount of QUICK an address has in the contract including fees earned
    function QUICKBalance(address _account) external view returns (uint256 quickAmount_) {
        uint256 dQuickAmount = balanceOf(_account);
        uint256 totalDQuick = totalSupply();
        quickAmount_ = dQuickAmount.mul(quick.balanceOf(address(this))).div(totalDQuick);
    }

    //returns how much QUICK someone gets for depositing dQUICK
    function dQUICKForQUICK(uint256 _dQuickAmount) external view returns (uint256 quickAmount_) {
        uint256 totalDQuick = totalSupply();
        quickAmount_ = _dQuickAmount.mul(quick.balanceOf(address(this))).div(totalDQuick);
    }

    //returns how much dQUICK someone gets for depositing QUICK
    function QUICKForDQUICK(uint256 _quickAmount) external view returns (uint256 dQuickAmount_) {
        uint256 totalQuick = quick.balanceOf(address(this));
        uint256 totalDQuick = totalSupply();
        if (totalDQuick == 0 || totalQuick == 0) {
            dQuickAmount_ = _quickAmount;
        }
        else {
            dQuickAmount_ = _quickAmount.mul(totalDQuick).div(totalQuick);
        }
    }
}
