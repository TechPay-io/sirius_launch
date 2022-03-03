## Launch a testing private network

Check the instruction for operating a private testing network (fakenet) there:
https://github.com/TechPay-io/go-photon/#operating-a-private-network-fakenet

Also check out the demo scripts for fakenet: https://github.com/TechPay-io/go-photon/#running-the-demo

All the instructions for Photon mainnet/testnet will apply to the fakenet with
the only exception that you have to use `--fakenet i/N` flag instead of `--genesis $NETWORK`.

## Launch a production private network

Launching a production private network involves generation of a custom genesis file.

Once genesis file is in place, all the instructions for Photon mainnet/testnet will apply to your private network with
the only exception that users have to use the custom genesis file instead of Photon mainnet or testnet genesis files.

Currently, there's no tool for generation of a go-photon genesis file. If you're looking to implement one yourself,
check out the functions https://github.com/TechPay-io/go-photon/blob/main/photon/genesisstore/dump.go#L71 and
https://github.com/TechPay-io/go-photon/blob/main/integration/makegenesis/genesis.go#L44
