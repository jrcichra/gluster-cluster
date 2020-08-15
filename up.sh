#!/bin/bash
set -x
kvm-ok
cd k8s-vagrant-multi-node
NODE_COUNT=5 BOX_OS=ubuntu VAGRANT_DEFAULT_PROVIDER=libvirt make up -j6
vagrant global-status
