# Aetherswap Core

[![Lint](https://github.com/Aetherswap/core-contracts/actions/workflows/lint.yml/badge.svg)](https://github.com/Aetherswap/core-contracts/actions/workflows/lint.yml)
[![Tests](https://github.com/Aetherswap/core-contracts/actions/workflows/tests.yml/badge.svg)](https://github.com/Aetherswap/core-contracts/actions/workflows/tests.yml)
[![Fuzz Testing](https://github.com/Aetherswap/core-contracts/actions/workflows/fuzz-testing.yml/badge.svg)](https://github.com/Aetherswap/core-contracts/actions/workflows/fuzz-testing.yml)
[![Mythx](https://github.com/Aetherswap/core-contracts/actions/workflows/mythx.yml/badge.svg)](https://github.com/Aetherswap/core-contracts/actions/workflows/mythx.yml)
[![npm version](https://img.shields.io/npm/v/@aetherswap/core-contracts/latest.svg)](https://www.npmjs.com/package/@aetherswap/core-contracts/v/latest)

***Forked from (Uniswap V3)[https://github.com/uniswap/v3-core]***

This repository contains the core smart contracts for the Aetherswap Protocol.
For higher level contracts, see the [Periphery](https://github.com/Aetherswap/periphery)
repository.

## Local deployment

In order to deploy this code to a local testnet, you should install the npm package
`@aetherswap/core-contracts`
and import the factory bytecode located at
`@aetherswap/core-contracts/artifacts/contracts/AetherFactory.sol/AetherFactory.json`.
For example:

```typescript
import {
  abi as FACTORY_ABI,
  bytecode as FACTORY_BYTECODE,
} from '@aetherswap/core-contracts/artifacts/contracts/AetherFactory.sol/AetherFactory.json'

// deploy the bytecode
```

This will ensure that you are testing against the same bytecode that is deployed to
mainnet and public testnets, and all Aetherswap code will correctly interoperate with
your local deployment.

## Using solidity interfaces

The Aetherswap interfaces are available for import into solidity smart contracts
via the npm artifact `@aetherswap/core-contracts`, e.g.:

```solidity
import '@aetherswap/core-contracts/contracts/interfaces/IAetherPool.sol';

contract MyContract {
  IAetherPool pool;

  function doSomethingWithPool() {
    // pool.swap(...);
  }
}

```

## Licensing

The primary license for ***Uniswap V3 Core*** is the Business Source License 1.1 (`BUSL-1.1`), see [`LICENSE`](./LICENSE). However, some files are dual licensed under `GPL-2.0-or-later`:

- All files in `contracts/interfaces/` may also be licensed under `GPL-2.0-or-later` (as indicated in their SPDX headers), see [`contracts/interfaces/LICENSE`](./contracts/interfaces/LICENSE)
- Several files in `contracts/libraries/` may also be licensed under `GPL-2.0-or-later` (as indicated in their SPDX headers), see [`contracts/libraries/LICENSE`](contracts/libraries/LICENSE)

### Other Exceptions

- `contracts/libraries/FullMath.sol` is licensed under `MIT` (as indicated in its SPDX header), see [`contracts/libraries/LICENSE_MIT`](contracts/libraries/LICENSE_MIT)
- All files in `contracts/test` remain unlicensed (as indicated in their SPDX headers).
