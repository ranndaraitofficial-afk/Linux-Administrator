# 🛠️ Linux Basic Tools Installer

A simple Bash script that sets up essential Linux tools in one command — perfect for fresh installs or new server setups.

---

## 🚀 Usage

```bash
chmod +x Basictools.sh
sudo ./Basictools.sh
```

---

## 📦 What Gets Installed

| Tool | Package Name | Description |
|------|-------------|-------------|
| **tmux** | `tmux` | Terminal multiplexer — split your terminal into multiple panes and keep sessions alive even after disconnecting |
| **OpenSSH Server** | `openssh-server` | Allows remote access to your machine securely over SSH |
| **DHCP Client** | `isc-dhcp-client` | Automatically requests and manages an IP address from a DHCP server on your network |
| **Nano** | `nano` | Beginner-friendly, lightweight command-line text editor |
| **Vim** | `vim` | Powerful and highly configurable command-line text editor, great for advanced users |

---

## ⚙️ What the Script Does

1. **Updates** the package list (`apt update`)
2. **Upgrades** all existing packages to their latest versions (`apt upgrade`)
3. **Fixes** any broken dependencies (`apt install -f`)
4. **Installs** the tools listed above
5. Prints a confirmation message when everything is done

---

## ✅ Requirements

- A Debian/Ubuntu-based Linux distribution (uses `apt`)
- `sudo` privileges

---

## 📝 Notes

- The script uses the `-y` flag to automatically confirm all prompts — no manual input needed.
- Safe to run on a fresh system or an existing one.

---

## 📄 License

Feel free to use, modify, and share this script freely.
