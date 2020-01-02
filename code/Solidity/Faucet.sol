// Our first contract is a faucet!
contract Faucet {

    // Give out ether to anyone who asks
    // definitions - public
    //.. public can be called by other contracts
    function withdraw(uint withdraw_amount) public { // {} - contract definition includes all of the lines between the ( {} )

        // Limit withdrawal amount
        require(withdraw_amount <= 100000000000000000);// throws an exception if fails

        // Send the amount to the address that requested it
        // meg - message object
        // sender attribute - the address
        // msg object represents the transaction that triggered the execution of this contract
        // sender is the sender address of the transaction
        // transfer transfers ether from the current contract to the address of the sender.
        msg.sender.transfer(withdraw_amount); // the actual withdrawal

    } // end of the definition of our withdraw function.

    // default function!
    // note: contracts can have one default function which has to nave no name.
    //.. it is usually the one that receives ether. 
    // Accept any incoming amount
    function () public payable {}

}
