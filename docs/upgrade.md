This document describes the steps to upgrade a node running go-photon v1.0.1-rc.1 to the go-photon v1.0.2-rc.5

### Stop the node

- Make sure to stop the go-photon node first and that the node is not restarted before processing the next steps

```shell script
killall photon
```

### Update and build go-photon

```shell script
cd go-photon/
git pull
go mod tidy
make photon
```

- Confirm your go-photon version

```
./build/photon version
Go-Photon
Version: 1.0.2-rc.5
```

### Start the read-only node

```shell script
./build/photon --genesis ~/.photon/genesis.g
```

### Startup as a validator

- Make sure the node has synced up before starting as a validator

> Note: check out validator Guides: [https://github.com/TechPay-io/go-photon/wiki/Validator-Guides](https://github.com/TechPay-io/go-photon/wiki/Validator-Guides)

- Stop your current go-photon process

```shell script
killall photon
```

- Wait until the node has stopped

- Then run the validator node:

```shell script
nohup ./build/photon --genesis ~/.photon/genesis.g --validator.id ID --validator.pubkey 0xPubkey --validator.password /path/to/password &
```
