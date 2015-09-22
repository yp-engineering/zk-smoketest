#!/usr/bin/env bash
export PYTHONPATH=lib.linux-x86_64-2.6
export LD_LIBRARY_PATH=$PYTHONPATH
# ZK_SERVERS is passed in via jenkins
./zk-smoketest.py --servers $ZK_SERVERS
./zk-latencies.py --servers $ZK_SERVERS
python check_zookeeper.py -s $ZK_SERVERS
