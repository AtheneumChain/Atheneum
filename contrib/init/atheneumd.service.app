[Unit]
Description=AEM's distributed currency daemon
After=network.target

[Service]
User=atheneum
Group=atheneum

Type=forking
PIDFile=/var/lib/atheneumd/atheneumd.pid

ExecStart=/usr/bin/atheneumd -daemon -pid=/var/lib/atheneumd/atheneumd.pid \
          -conf=/etc/atheneum/atheneum.conf -datadir=/var/lib/atheneumd

ExecStop=-/usr/bin/atheneum-cli -conf=/etc/atheneum/atheneum.conf \
         -datadir=/var/lib/atheneumd stop

Restart=always
PrivateTmp=true
TimeoutStopSec=60s
TimeoutStartSec=2s
StartLimitInterval=120s
StartLimitBurst=5

[Install]
WantedBy=multi-user.target
