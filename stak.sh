#!/bin/bash
curl -O `curl -s https://api.github.com/repos/fireice-uk/xmr-stak/releases/latest | grep -o 'browser_download_url.*xmr-stak-portbin-linux.tar.gz' | sed 's/.*"//'`
curl -O http://path.to/your/config.txt
tar xzf xmr-stak-portbin-linux.tar.gz
./xmr-stak.sh
