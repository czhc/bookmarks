# Verifying contracts

- using Etherscan and sourcify
- Contract tab - inspect the full code.

e.g. https://etherscan.io/address/0xa696a63cc78dffa1a63e9e50587c197387ff6c7e#code

verified contracts will have *Contract Source Code Verified*

* compared to sourcify, which is decentralized and uses IPFS. 

The contract at the provided address and chain has not yet been sourcified.

**Q:** What does it mean to be verified on etherscan, why are some verified contracts on etherscan not "sourcified"? Any difference process-wise, or does it mean just readable?

yep, just convention

**Q** Trying to understand why multi-contract on etherscan is not possible - is it planned, or it is not technically possible?

etherscan may not want to download all dependencies in contracts, for security reasons.

**Q** Is it okay to interact with read/write functions in a contract in isolation / unit-testing?

Recommend to download source code and write unit tests instead.


https://repo.sourcify.dev/contracts/full_match/42/0x000E2324a3ac5C87c28aA2C6dfcFB6372b328a2A/

Process: 
1. Write smart contract
2. Compile & Deploy
3. Verify Smart contract


## Remix

although remix supports importing files via github link, ethereum multi-file contracts does not. to workaround: flatten file.

literally copy-paste SafeMath file into the current file, using Flattener feature in Remix that does this for you.

If flattened files fails, it may be because of conflicting licenses declared in `// SPDX-License-Identifier` - must only have one. yes `//` can be read.

Solidity compiler: Auto compile, Enable optimization - compressed code, may make it less readable.

https://ethgasstation.info/blog/what-is-create2/
CREATE2 allows to deploy smart contrats for multiple networks.

If you want multi-file but without flattening:
- create a new contract
- manually copy import file into local file
- import dependency using import "./SafeMath.sol"

On etherscan verification, select Solidity multipart files.
from Remix > Download all files.

- may need to use a diff checker to compare the local file vs remote file.
- can compare their SHA1 hashes: https://jlk.fjfi.cvut.cz/arch/manpages/man/sha1sum.1
- etherscan contract checker: https://etherscan.io/contractdiffchecker


## Truffle

`truffle/hdwallet-provider`: lets you select the wallet you will be deploying with by passing in the private key

using truffle to deploy contracts, you can use truffle plugins to verify your contracts: `truffle-plugin-verify`. save as `--dev`

in truffle-config.js:
- pass in privateKey and Etherscan API key .txt.
- add network configurations: kovan { network_id, provider_api_key: }
- in migrations/
-- artifacts.require() and deploy() your contract.sol

to deploy: `truffle migrate --network kovan`
** sometimes deploy fails?

to verify in Etherscan, in truffle-config:
`plugins: ['truffle-plugin-verify'],
api_keys: [ yourEtherscanApiKey ]
`

then: `truffle run verify MyContract --network kovan`

truffle doesn't give you the metadata file, you need to file it inside the build folder.

For sourcify: copy the metadata json, and unescape it, then paste it into sourcify with the other contract.sols


## Hardhat

npm install hardhat --save-dev

create `hardhat.config.ts`
simliar to truffle config js

- import file path to alchemy API key, private key and etherscan API key
- create tsconfig.json for ts -> js
- install --save-dev `hardhat-delloy`, `hardhat-deploys ethers`,`ethers`

hardhat provides package to verify contracts on both etherescan and sourcify using CLI

https://hardhat.org/plugins/hardhat-deploy.html
`etherscan-verify`, `sourcify`


Get Etherscan API keys by creating etherscan account -> get API keys.

