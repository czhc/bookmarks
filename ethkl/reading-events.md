## Reading Event logs in etherscan

* all evnts are recorded in Logs tab in a transaction
> https://etherscan.io/tx/0xa803eaa3d44e173b730824ba3fc54b3ba545fd1f32bf2c29e49d5783b079af09#eventlog


or see latest events by contract:

https://etherscan.io/address/0x9619dabdc2eb3679943b51afbc134dec31b74fe8#events

* use keccak256 to reverse `event` definition in docs e.g. `Mint(a, b, c) `: event name + input order and types to compare with ``Topic [0]`` hash after `0x`

Checking the first event emitted in this txn:
> https://etherscan.io/tx/0xa803eaa3d44e173b730824ba3fc54b3ba545fd1f32bf2c29e49d5783b079af09#eventlog

See Topics[0]: `0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef`

the hash: `ddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef` should match the Keccak256 of an Event definition

in the Events tab itself, there's a Method column that tells you the function name `mint`. To double check:

the event definition is in the ERC721 source: [`_mint` function](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC721/ERC721.sol#L291), inherits event [`Transfer`](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC721/IERC721.sol#L14)
- KECCAK256(`Transfer(address,address,uint256)`) => `ddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef`

so it matches!


