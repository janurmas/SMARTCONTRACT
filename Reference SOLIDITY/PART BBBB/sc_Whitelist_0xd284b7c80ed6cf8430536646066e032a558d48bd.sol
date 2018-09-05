/**********************************************************************
*These solidity codes have been obtained from Etherscan for extracting
*the smartcontract related info.
*The data will be used by MATRIX AI team as the reference basis for
*MATRIX model analysis,extraction of contract semantics,
*as well as AI based data analysis, etc.
**********************************************************************/
contract Whitelist {
    address public owner;
    address public sale;

    mapping (address => uint) public accepted;

    function Whitelist() {
        owner = msg.sender;
    }

    // Amount in WEI i.e. amount = 1 means 1 WEI
    function accept(address a, uint amount) {
        assert (msg.sender == owner || msg.sender == sale);

        accepted[a] = amount;
    }

    function setSale(address sale_) {
        assert (msg.sender == owner);

        sale = sale_;
    } 
}