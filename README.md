# Bookmarks

A collection of reading materials I revised for my sabbatical (2021). I aim to be able to recollect and discuss each subject matter at each checkpoint. 

## Zero-knowledge Proofs

ZKP is about statistical likelihood of something being true, or minimizing the probability of a lie. Never 100% true. 

* Completeness: everything that is true has a proof
* Soundness: everything that is provable is true
* Zero-knowledge: only the statement to prove is revealed

- [x] ZK Proofs: An Illustrated Primer [p1](https://blog.cryptographyengineering.com/2014/11/27/zero-knowledge-proofs-illustrated-primer/) [p2](https://blog.cryptographyengineering.com/2017/01/21/zero-knowledge-proofs-an-illustrated-primer-part-2/)
- [x] ELI5 [hackernoon](https://hackernoon.com/eli5-zero-knowledge-proof-78a276db9eff) [crypto.bi](https://crypto.bi/zero-knowledge/)
- [x] ELI5 [computerphile](https://www.youtube.com/watch?v=HUs1bH85X9I) - using ZK for fraud-proofing elections
- [x] Yao's Millionaire problem [wiki](https://en.wikipedia.org/w/index.php?title=Yao%27s_Millionaires%27_problem&ref=hackernoon.com)
- [x] [Good Audience](https://blog.goodaudience.com/understanding-zero-knowledge-proofs-through-simple-examples-df673f796d99): ZK in simple examples 
- [x] Simply Explained [video](https://www.youtube.com/watch?v=OcmvMs4AMbM)
- [ ] ING uses [ZK-Range Proof](https://github.com/ing-bank/zkrp) to estimate customer's salary range for loan approval 
- [ ] Phyiscal zero-knowledge object-comparison for [Nuclear Warhead Verification](https://www.nature.com/articles/ncomms12890.pdf)
- [ ] [Why I wrote PGP](https://www.philzimmermann.com/EN/essays/WhyIWrotePGP.html)
- [ ] 
Interactive proofs are limited in transferability - requires repetition of process of proof. 
Non-interactive proofs do not require interaction between prover and verfier.

### Non-interactive zero-knowledge proof zk-SNARK 

* succinct: fast (milliseconds), proof of length within 100-bytes
* non-interactive: single message from prover to verfier
* argument of knowledge: 

- [x] [Wiki](https://en.wikipedia.org/wiki/Non-interactive_zero-knowledge_proof)
- [ ] [ZCash](https://z.cash/technology/zksnarks/)
- [ ] zkga.me: [Intro to ZK Snarks](https://blog.zkga.me/intro-to-zksnarks)



## Defi Security 

Collection of [PQRs](https://docs.defisafety.com/finished-reviews/) for protocols: 
- [ ] [Alpha Homora](https://docs.defisafety.com/finished-reviews/alpha-homora-process-quality-review)
- [ ] [CREAM Finance](https://docs.defisafety.com/finished-reviews/c.r.e.a.m-finance-pq-review)
- [ ] [CREAM Trailbybits audit](https://github.com/trailofbits/publications/blob/master/reviews/CREAMSummary.pdf)
- [ ] [Uniswap V3](https://docs.defisafety.com/misc-and-in-work/uniswap-v3)

## DevOps

- [ ] Running ETH2 validators on AWS [Geth](https://docs.google.com/document/d/1ug-UruaXsghWy_0qvcUWOnJT9ltFho8rQxrIo7vv3Tk/edit) [BeaconChain](https://docs.google.com/document/d/1pTSwozCFXOP3tJM_dX2QAa8anF1BLYBf8eOEBnEZESo/edit)
- [ ] Medalla ETH 2.0 Testnet [README](https://github.com/goerli/medalla/blob/master/medalla/README.md)
- [ ] Tips & best practices [Coinmonks](https://medium.com/coinmonks/how-to-stake-32-eth-the-best-practices-eth2-staking-e35dd0de1ff2)
- [ ] Running Geth [guide](https://geth.ethereum.org/docs/install-and-build/installing-geth) [QuickNode](https://www.quicknode.com/guides/infrastructure/how-to-install-and-run-a-geth-node) [Mercury](https://medium.com/mercuryprotocol/how-to-run-an-ethereum-node-on-aws-a8774ed3acf6)

## EF Project

- [ ] OS [City](https://os.city/en/)
- [ ] Unicef [CryptoFund](https://www.unicef.org/innovation/stories/unicef-cryptofund)
- [ ] Etherisc [Crop Insurance](https://blog.etherisc.com/etheriscs-crop-insurance-initiative-in-kenya-earns-support-from-ethereum-foundation-4f951df1db86)
- [ ] Issues: Harnessing blockchain for [Sustainable development](https://unctad.org/system/files/information-document/CSTD2020-2021_Issues02_Blockchain_en.pdf) 2020

## Unsorted

- [ ] Missing Semester of your [CS Education](https://missing.csail.mit.edu/)
- [ ] Hierarchical Deterministic wallets [BIP32](https://github.com/bitcoin/bips/blob/master/bip-0032.mediawiki)
- [ ] HD wallets implemented in ruby [GemHQ](https://github.com/GemHQ/money-tree)
- [ ] Rust to Ruby [sdogruyol](https://github.com/Sdogruyol/rust-vs-ruby)
- [ ] Solana: 710K tps similar to centralized databases [docs](https://docs.solana.com/introduction)
- [ ] Graph: Cost Model [Workshop](https://www.youtube.com/watch?v=s7zNzgiL4z4)
