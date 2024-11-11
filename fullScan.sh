#!/bin/bash

./getALLIPs.sh

./os_scan.sh ./allIPs.txt
./vuln_scan.sh ./allIPs.txt
