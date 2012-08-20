#!/bin/sh
sudo tcpreplay -i tap0 pcap.data/iperf.pcap & \
sudo tcpreplay -i tap2 pcap.data/iperf.pcap & \
sudo tcpreplay -i tap3 pcap.data/iperf.pcap & \
sudo tcpreplay -i tap4 pcap.data/iperf.pcap & \
sudo tcpreplay -i tap5 pcap.data/iperf.pcap & \
sudo tcpreplay -i tap6 pcap.data/iperf.pcap & \
sudo tcpreplay -i tap7 pcap.data/iperf.pcap & \
sudo tcpreplay -i tap8 pcap.data/iperf.pcap & \
sudo tcpreplay -i tap9 pcap.data/iperf.pcap & \
sudo tcpreplay -i tap10 pcap.data/iperf.pcap & \
sudo tcpreplay -i tap11 pcap.data/iperf.pcap & \
sudo tcpreplay -i tap12 pcap.data/iperf.pcap & \
sudo tcpreplay -i tap13 pcap.data/iperf.pcap & \
sudo tcpreplay -i tap14 pcap.data/iperf.pcap & \
sudo tcpreplay -i tap15 pcap.data/iperf.pcap & \
