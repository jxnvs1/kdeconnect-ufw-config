# KDE Connect UFW Config

Este script configura o firewall UFW (Uncomplicated Firewall) para funcionar corretamente com o KDE Connect, um aplicativo que conecta seu telefone ao seu desktop Linux.

## Recursos

- Bloqueia todas as conexões de entrada.
- Permite todas as conexões de saída.
- Libera as portas necessárias para o KDE Connect.
- Ativa e recarrega as configurações do UFW.
- Verifica se o UFW está instalado, oferecendo instruções para instalação se necessário.

## Requisitos

- UFW (Uncomplicated Firewall)
- Permissões de administrador (sudo)

## Como usar

1. Clone este repositório:
   ```bash
   git clone https://github.com/seu-usuario/kdeconnect-ufw-config.git
   cd kdeconnect-ufw-config
   chmod +x configurar_ufw.sh
   ./configurar_ufw.sh


   
