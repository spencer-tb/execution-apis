// performs a contract-creation call with more gas than common RPC gas caps (50M) but less than the block gas limit; the init code returns the gas left at entry, so the call must not be capped below the block gas limit
>> {"jsonrpc":"2.0","id":1,"method":"eth_call","params":[{"from":"0x0102030000000000000000000000000000000000","gas":"0x3938700","input":"0x5a5f5260205ff3"},"latest"]}
<< {"jsonrpc":"2.0","id":1,"result":"0x0000000000000000000000000000000000000000000000000000000003905b9c"}
