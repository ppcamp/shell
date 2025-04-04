#!/bin/zsh

local url='https://github.com/carapace-sh/carapace-bin/releases/download/v1.3.0/carapace-bin_1.3.0_linux_amd64.tar.gz'
curl -sLo - $url | sudo tar xz -C /usr/local/bin carapace
