# Generate a P2SH address.

A1=$(bitcoin-cli -regtest getnewaddress)
PUB1=$(bitcoin-cli -regtest getaddressinfo "$A1" | jq -r '.pubkey')

A2=$(bitcoin-cli -regtest getnewaddress)
PUB2=$(bitcoin-cli -regtest getaddressinfo "$A2" | jq -r '.pubkey')

bitcoin-cli -regtest createmultisig 2 "[\"$PUB1\",\"$PUB2\"]" | jq -r '.address'
