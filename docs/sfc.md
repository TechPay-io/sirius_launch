## First steps

[Wiki](https://github.com/TechPay-io/photon-sfc/wiki/)

### Attach to your node 
Attach to a running node. You may need to specify your specific configuration.

```shell script
photon attach
```

### Initializing the SFC

To use the SFC contract in the console you have to initialize the contract context.

```js
abi = JSON.parse('SFC_ABI_OUTPUT')
// Note: define variable sfcc (instead of sfc) to avoid clashing with the sfc namespace introduced in go-sirius.
sfcc = web3.tpc.contract(abi).at("0xfc00face00000000000000000000000000000000")
```

The current sfc release is `3.0.1-rc1`. The ABI output available at [SFC ABI v3](../releases/sfc-abi-3.0.1-rc.1.json).

### Checking initializing SFC has worked

```js
// Sanity check
sfcc.lastValidatorID() // if everything is all right, will return a non-zero value
```

### Unlocking account

```js
personal.unlockAccount("0xYourAddress", "password", 60)
```
