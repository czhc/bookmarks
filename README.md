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
- [ ] [Uniswap V3](https://docs.defisafety.com/misc-and-in-work/uniswap-v3)
