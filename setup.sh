#!/usr/bin/env bash
# setup.sh — Initialize the writeup repo locally

set -e

echo "[*] Security Writeups — Setup Script"
echo "======================================="

# 1. Git init
if [ ! -d ".git" ]; then
  git init
  git branch -M main
  echo "[+] Git initialized"
fi

# 2. Check Ruby
if command -v ruby &>/dev/null; then
  echo "[+] Ruby: $(ruby -v)"
  bundle install
  echo "[+] Jekyll dependencies installed"
else
  echo "[!] Ruby not found. Install Ruby first:"
  echo "    https://www.ruby-lang.org/en/downloads/"
fi

# 3. Remind to update config
echo ""
echo "[!] Remember to update _config.yml:"
echo "    - url: https://YOUR_USERNAME.github.io"
echo "    - baseurl: /YOUR_REPO_NAME"
echo "    - github.username: YOUR_USERNAME"
echo ""
echo "[*] To preview locally:"
echo "    bundle exec jekyll serve"
echo ""
echo "[*] To create a new writeup:"
echo "    cp CTF/_TEMPLATE.md CTF/HackTheBox/machine-name.md"
echo ""
echo "[+] Setup complete!"
