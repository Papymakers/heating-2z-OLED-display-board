#!/bin/bash
# Script d'initialisation du dépôt GitHub
# Org : Papymakers / Repo : heating-2z-OLED-display-board
# Exécuter depuis le dossier racine du projet

set -e

REPO_NAME="heating-2z-OLED-display-board"
ORG="Papymakers"

echo "=== Initialisation du dépôt $ORG/$REPO_NAME ==="

git init
git add .
git commit -m "Initial commit — kit affichage OLED 2 zones (2 PCB + nappe FLEX 8 pistes)"

# Créer le repo sur GitHub (nécessite gh CLI authentifié)
gh repo create "$ORG/$REPO_NAME" \
  --public \
  --description "OLED I2C display kit for the 2-zone ESP32-C6 heating controller — 2 PCBs + FLEX 8-track ribbon, 6-module DIN enclosure" \
  --homepage "https://papymakers.com"

git remote add origin "git@github.com:$ORG/$REPO_NAME.git"
git branch -M main
git push -u origin main

echo "=== Dépôt disponible : https://github.com/$ORG/$REPO_NAME ==="
