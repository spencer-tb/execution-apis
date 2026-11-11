// performs a contract-creation call with more than TX_MAX_GAS_LIMIT (2^24) gas; the init code returns the gas left at entry, which must exceed 2^24 since eth_call does not cap execution gas
>> {"jsonrpc":"2.0","id":1,"method":"eth_call","params":[{"from":"0x0102030000000000000000000000000000000000","gas":"0x1312d00","input":"0x5a5f5260205ff3"},"latest"]}
<< {"jsonrpc":"2.0","id":1,"result":"0x00000000000000000000000000000000000000000000000000000000012e019c"}
