#!/bin/sh -e
flatpak-builder --user --repo=steam --force-clean --install-deps-from=flathub build-dir com.valvesoftware.Steam.yml
flatpak --user remote-add --no-gpg-verify --if-not-exists steam steam
flatpak install steam com.valvesoftware.Steam
flatpak update com.valvesoftware.Steam
