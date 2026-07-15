#!/usr/bin/env bash

# ============================================================
# Fix Cloud-Init Network Reset
# Author : NetworkingWithDara
# GitHub : https://github.com/ranndaraitofficial-afk/Linux-Administrator
# Description: This purpose of creating this script it for help us linux administrator easy to fix Cloud-init reset when install a new linux server also for lap purpose
# Disable cloud-init network management and create a static
# Netplan configuration.
# Tested on Ubuntu Server 22.04/24.04
# ============================================================

set -e

# ---------- Check for root ----------
if [[ $EUID -ne 0 ]]; then
    echo "Please run this script with sudo."
    exit 1
fi

echo "===== Cloud-Init Network Fix ====="

# ---------- Disable cloud-init ----------
echo "[1/5] Disabling Cloud-Init network management..."

mkdir -p /etc/cloud/cloud.cfg.d

cat >/etc/cloud/cloud.cfg.d/99-disable-network-config.cfg <<EOF
network:
  config: disabled
EOF

# ---------- Detect network interface ----------
NIC=$(ip route | awk '/default/ {print $5}')

if [[ -z "$NIC" ]]; then
    echo "Unable to detect network interface."
    exit 1
fi

echo "Detected Interface : $NIC"

# ---------- User Input ----------
echo
read -p "Static IP (CIDR) [192.168.1.100/24]: " IP
read -p "Gateway [192.168.1.1]: " GATEWAY
read -p "Primary DNS [8.8.8.8]: " DNS1
read -p "Secondary DNS [1.1.1.1]: " DNS2

IP=${IP:-192.168.1.100/24}
GATEWAY=${GATEWAY:-192.168.1.1}
DNS1=${DNS1:-8.8.8.8}
DNS2=${DNS2:-1.1.1.1}

# ---------- Backup Existing Netplan ----------
echo
echo "[2/5] Backing up existing Netplan files..."

mkdir -p /etc/netplan/backup

mv /etc/netplan/*.yaml /etc/netplan/backup/ 2>/dev/null || true

# ---------- Create New Netplan ----------
echo "[3/5] Creating Netplan configuration..."

cat >/etc/netplan/01-static.yaml <<EOF
network:
  version: 2
  renderer: networkd

  ethernets:
    $NIC:
      dhcp4: false
      addresses:
        - $IP

      routes:
        - to: default
          via: $GATEWAY

      nameservers:
        addresses:
          - $DNS1
          - $DNS2
EOF

chmod 600 /etc/netplan/01-static.yaml

# ---------- Validate ----------
echo "[4/5] Validating configuration..."

netplan generate

echo "[5/5] Applying configuration..."

netplan apply

echo
echo "======================================"
echo " Configuration applied successfully!"
echo "======================================"

echo
ip addr show "$NIC"
