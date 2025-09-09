#!/bin/bash
# cleanup.sh - Clean temporary files and system cache

echo "🧹 ⇒ Cleaning system..."

# Clean apt cache (Debian/Ubuntu)
if command -v apt >/dev/null 2>&1; then
    sudo apt clean
fi

# Remove old logs
sudo journalctl --vacuum-time=7d

# Clean /tmp
sudo rm -rf /tmp/*

# Remove trash (for current user)
rm -rf ~/.local/share/Trash/*

echo "✅ ⇒ Cleanup completed!"
echo "|------------------------|"
echo "| Cleaned items | Status |"
echo "|------------------------|"
echo "| System cache  |   ✅   |"
echo "|------------------------|"
echo "| Old logs      |   ✅   |"
echo "|------------------------|"
echo "| temp files    |   ✅   |"
echo "|------------------------|"
echo "| trash (user)  |   ✅   |"
echo "|------------------------|"
