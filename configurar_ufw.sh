#!/usr/bin/env bash

# Autor: Jonas Santana
# Descrição: Este script configura o UFW (Uncomplicated Firewall) para:
# 1. Bloquear todas as conexões de entrada.
# 2. Permitir todas as conexões de saída.
# 3. Permitir as portas necessárias para o KDE Connect.
# 4. Ativar e recarregar as regras do UFW.

# Verifica se o UFW está instalado
if ! command -v ufw &> /dev/null; then
    echo "O UFW não está instalado."
    echo -e "Instale-o usando os comandos abaixo para sua distribuição:\n"
    echo "Debian/Ubuntu: sudo apt install ufw"
    echo "Arch Linux: sudo pacman -S ufw"
    echo "Fedora: sudo dnf install ufw"
    echo "openSUSE: sudo zypper install ufw"
    exit 1
fi

# Configura o UFW para bloquear todas as entradas e permitir todas as saídas
sudo ufw default deny incoming
sudo ufw default allow outgoing

# Permite as portas necessárias para o KDE Connect
sudo ufw allow 1714:1764/udp
sudo ufw allow 1714:1764/tcp

# Ativa o UFW
sudo ufw enable

# Recarrega as regras do UFW
sudo ufw reload

# Mostra o status do UFW
sudo ufw status verbose
