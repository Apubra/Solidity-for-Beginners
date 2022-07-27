pragma solidity 0.5.1;

contract MyContract {
    Person[] public people;

    uint256 public peopleCount;

    struct Person {
        string _firstName;
        string _lastName;
    }

    Person person;

    function setPerson() public {
      person = Person('_firstName', '_lastName');
   }

   function getPerson() public view returns (string memory) {
      return person._firstName;
   }

    // person = Person('_firstName', '_lastName');
    // We can not define struct value without a function


    
    function addPerson(string memory _firstName, string memory _lastName) public {
        people.push(Person(_firstName, _lastName));
        peopleCount += 1;
    }
}