# Check the total amount in the wallet.

bitcoin-cli -regtest loadwallet builderswallet
bitcoin-cli -regtest getbalance
