# 🌐 Linux Basic Network Tools Installer

A simple Bash script that installs essential networking tools in one shot — ideal for fresh Linux setups, servers, or anyone doing network diagnostics and security testing.

---

## 🚀 Usage

```bash
chmod +x BasicNetworkTools.sh
sudo ./BasicNetworkTools.sh
```

---

## 📦 What Gets Installed

| Tool | Package Name | Description |
|------|-------------|-------------|
| **curl** | `curl` | Transfer data to/from servers using URLs — great for testing APIs and downloading files from the terminal |
| **wget** | `wget` | Download files from the web via HTTP, HTTPS, and FTP; supports recursive downloads |
| **ip** | `iproute2` | Modern tool for managing network interfaces, routing tables, and IP addresses (replaces `ifconfig`) |
| **ping** | `iputils-ping` | Test connectivity to a host by sending ICMP echo requests — the most basic network diagnostic |
| **traceroute** | `traceroute` | Traces the path packets take to reach a destination, showing every hop along the way |
| **nslookup / dig** | `dnsutils` | Query DNS records to resolve domain names, check MX records, and troubleshoot DNS issues |
| **netcat** | `netcat` | The "Swiss Army knife" of networking — read/write data across TCP/UDP connections, port scanning, and more |
| **nmap** | `nmap` | Powerful network scanner for discovering hosts, open ports, services, and OS detection |

---

## ⚙️ What the Script Does

1. **Updates** the package list (`apt update`)
2. **Upgrades** all existing packages to their latest versions (`apt upgrade`)
3. **Fixes** any broken dependencies (`apt install -f`)
4. **Installs** all the network tools listed above
5. Prints a confirmation message listing every installed tool

---

## 🔍 Common Use Cases

- **curl / wget** — Download files or test REST APIs directly from the terminal
- **ip** — Check your current IP address, manage network interfaces
- **ping** — Quickly verify if a host is reachable
- **traceroute** — Debug slow connections or find where packets are being dropped
- **nslookup / dig** — Diagnose DNS resolution problems
- **netcat** — Test if a specific port is open, transfer files, or create simple TCP listeners
- **nmap** — Scan your own network for open ports and connected devices

---

## ✅ Requirements

- A Debian/Ubuntu-based Linux distribution (uses `apt`)
- `sudo` privileges

---

## ⚠️ Note on nmap

`nmap` is a powerful tool intended for use on networks **you own or have permission to scan**. Unauthorized scanning of networks may be illegal in your jurisdiction. Use responsibly.

---

## 📝 Notes

- The `-y` flag is used throughout to skip manual confirmation prompts.
- Safe to run on a fresh system or an existing one.

---

## 📄 License

Feel free to use, modify, and share this script freely.
