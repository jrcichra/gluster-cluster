#!/bin/bash
set -x
sudo apt update && sudo apt install -y cpu-checker vagrant qemu-kvm libvirt-daemon-system libvirt-clients bridge-utils virtinst virt-manager
kvm-ok
cd k8s-vagrant-multi-node
NODE_COUNT=5 BOX_OS=ubuntu VAGRANT_DEFAULT_PROVIDER=libvirt make up -j6
vagrant global-status
