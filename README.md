Provides programmatic interfaces for the Mai Reflex-Bond System core contracts.

Import all MRS abstract contracts

```
import "mrs-interfaces/Interfaces.sol";
```

Import multiple contracts

```
import { VatAbstract, VowAbstract } from "mrs-interfaces/Interfaces.sol";
```

Import individual contracts

```
import "lib/mrs-interfaces/src/mrs/VatAbstract.sol";
```


## Example Usage


```
import { VatAbstract } from "./Interfaces.sol";

pragma solidity ^0.5.15;

contract Testerface {

    VatAbstract _vat;

    constructor() public {
        _vat = VatAbstract(0xbA987bDB501d131f766fEe8180Da5d81b34b69d9);
    }

    function viewDebt() public view returns (uint256) {
        return _vat.debt();
    }    
}
```
