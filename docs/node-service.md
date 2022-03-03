## Run validator or node as service

Using service is optional. If your node has crashed, service may turn your node on right away, and it's not recommended.
Make sure to run in non-validate node to sync up the latest events and event blocks first. Once synced up, you can relaunch your node in validator mode.

If you want to process with systemd service, continue with the following steps


Create a service to run the node

```shell script
nano /etc/systemd/system/photon.service
```

and put in the following content

```service content

[Unit]
Description=Photon Blockchain

[Service]
Type=simple
ExecStart=/root/go-photon/build/photon --genesis /root/go-photon/build/mainnet.g --datadir /root/.photon --validator.id ID --validator.pubkey 0xPubkey --validator.password /path/to/password
KillMode=process
KillSignal=SIGINT
TimeoutStopSec=90
Restart=on-failure
RestartSec=10
SyslogIdentifier=photon-service
User=root
Group=root

[Install]
WantedBy=default.target

```

Enable and start the service

```shell script
systemctl enable photon.service
systemctl start photon.service
```

Use following commands

```shell script
// Check node status
systemctl status photon.service

// It will automatically run the node on server startup

