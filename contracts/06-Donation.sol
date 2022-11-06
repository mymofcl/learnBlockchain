//SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

contract Donation{
    enum DonationStatus{
        Donated,
        NotDonated
    }
    DonationStatus public currentDonationStatus;

    address payable public Doner;

    event isDonated(address _address,uint _totalAmaount);

    constructor(){
        Doner = payable(msg.sender);
        currentDonationStatus = DonationStatus.NotDonated;
    }

    modifier forOnlyNotDonated{
        require(currentDonationStatus == DonationStatus.NotDonated, "Owner has been Donated");
        _;
    }
    modifier minimumDonationAmount(uint _amount){
        require(msg.value >= _amount,"Please Donate a nominul Amount:(i.e: more than or equal 3 ethers)");
        _;
    }

    function donationDone() payable public forOnlyNotDonated minimumDonationAmount(3 ether){
        currentDonationStatus = DonationStatus.Donated;

        (bool donated, bytes memory message) = Doner.call{value: msg.value}("");
        require(donated);

        emit isDonated(msg.sender,msg.value);
    }





}