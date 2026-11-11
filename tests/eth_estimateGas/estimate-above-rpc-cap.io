// estimates a contract creation that deploys two maximum-size contracts and needs more gas than common RPC gas caps (50M) but less than the block gas limit
// speconly: client response is only checked for schema validity.
>> {"jsonrpc":"2.0","id":1,"method":"eth_estimateGas","params":[{"from":"0x0102030000000000000000000000000000000000","input":"0x656160006000f36000526006601a6000f0506006601a6000f05000","to":null}]}
<< {"jsonrpc":"2.0","id":1,"result":"0x48e16bd"}
--

const gas = BigInt(messages[1].response.result);
if (gas <= 50000000n || gas > 200000000n) {
    throw new Error("estimate must be above 50M and at most the block gas limit");
}
