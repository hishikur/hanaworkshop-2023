#!/bin/bash

sudo cp /etc/rhsm/rhsm.conf /etc/rhsm/rhsm.conf.sat-backup
sudo cp /etc/rhsm/rhsm.conf.kat-backup /etc/rhsm/rhsm.conf
sudo subscription-manager remove --all
sudo subscription-manager unregister
sudo subscription-manager clean
sudo yum clean all
sudo rm -rf /var/cache/yum/*
sudo rm -rf /var/cache/dnf
sudo yum remove katello-ca-consumer-labsat.opentlc.com -y
##sudo subscription-manager register --org=7728826 --activationkey=37fc
sudo subscription-manager register --org=11594663 --activationkey=tempkey
