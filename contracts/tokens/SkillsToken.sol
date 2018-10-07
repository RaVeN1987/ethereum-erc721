pragma solidity ^0.4.23;

import "../tokens/NFTokenMetadata.sol";
import "@0xcert/ethereum-utils/contracts/ownership/Ownable.sol";

contract MyNFToken is
  NFTokenMetadata,
  Ownable
{

    string mathematic_skills = "0";
    string public_speaking_skills = "0";
    string economic_skills = "0";
    string management_skills = "0";
    string problem_solving_skills = "0";

    function validateMathSkill() public {
        mathematic_skills = "1";
    }

    function validatePublicSpeakingSkill() public{
        public_speaking_skills = "1";
    }

    function validateEconomicSkill() public{
        economic_skills = "1";
    }

    function validateManagementSkill() public{
        management_skills = "1";
    }

    function validateProvenSolvingSkill() public{
        problem_solving_skills = "1";
    }

  constructor(
    string _name,
    string _symbol
  )
    public
  {
    nftName = _name;
    nftSymbol = _symbol;
  }

  function mint(
    address _owner,
    uint256 _id
  )
    onlyOwner
    external
  {
    super._mint(_owner, _id);
    }

  function burn(
    address _owner,
    uint256 _tokenId
  )
    onlyOwner
    external
  {
    super._burn(_owner, _tokenId);
  }

}
        
