const Web3 = require('web3'); 
const client = require('node-rest-client-promise').Client();
const INFURA_KEY = process.env.INFURA_PROJECT_ID; // Insert your own key here :)
const ETHERSCAN_API_KEY = process.env.ETHERSCAN_API_TOKEN;
const web3 = new Web3(
    new Web3.providers.WebsocketProvider('wss://mainnet.infura.io/ws/v3/'  +  INFURA_KEY)
    );
const CONTRACT_ADDRESS = "0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2"; //WETH contract
const etherscan_url = `http://api.etherscan.io/api?module=contract&action=getabi&address=${CONTRACT_ADDRESS}&apikey=${ETHERSCAN_API_KEY}`


async function getContractAbi() {
    const etherscan_response = await client.getPromise(etherscan_url)
    // console.log('etherscan_response', etherscan_response);
    const CONTRACT_ABI = JSON.parse(etherscan_response.data.result);
    return CONTRACT_ABI;
}

async function eventQuery(){

    const CONTRACT_ABI = await getContractAbi();
    const instance = new web3.eth.Contract(CONTRACT_ABI, CONTRACT_ADDRESS);
    const START_BLOCK = 7700000;
    const END_BLOCK = 7701000;

    instance.getPastEvents(
        "allEvents",
        { fromBlock: START_BLOCK, toBlock: END_BLOCK },
        (errors, events) => {
            if (!errors) {
                console.log(events);
            } else {
                console.log(errors);
            }
        }
     )
}

eventQuery();
