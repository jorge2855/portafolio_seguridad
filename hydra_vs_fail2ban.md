# Reporte de Incidente: Ataque de Fuerza Bruta SSH

## 🎯 Objetivo
Demostrar la vulnerabilidad de usar contraseñas débiles en protocolos de acceso remoto y cómo mitigar el riesgo mediante el bloqueo automatizado de IPs.

## 🧰 Herramientas Utilizadas
* **Atacante:** Hydra (Fuzzing y Brute-force)
* **Defensor:** Fail2Ban y UFW (Firewall)
* **Servidor:** Ubuntu Linux (WSL2) / Servicio OpenSSH

## 🏴‍☠️ FASE 1: El Ataque
Se simuló un ataque de diccionario dirigido al puerto 22 (SSH) utilizando una lista de contraseñas locales. El comando utilizado fue:
```bash
hydra -l practicante -P diccionario.txt ssh://localhost
