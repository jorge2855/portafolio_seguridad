# Hardening de Servidor: Autenticación Criptográfica SSH

## 🎯 Objetivo
Eliminar el vector de ataque por fuerza bruta y robo de credenciales desactivando la autenticación por contraseñas en el servidor SSH y migrando a un modelo de confianza por criptografía asimétrica.

## 🧰 Herramientas Utilizadas
* **Algoritmo de Criptografía:** Ed25519 (Máxima velocidad y seguridad)
* **Servicio:** OpenSSH Server
* **Archivos clave:** `~/.ssh/authorized_keys` y `/etc/ssh/sshd_config`

## 🔐 FASE 1: Generación e Instalación de Llaves
Se generó un par de llaves criptográficas locales para evitar el tránsito de contraseñas por la red.
1. Generación de llave pública/privada: `ssh-keygen -t ed25519`
2. Instalación de la llave pública (`.pub`) en el archivo de confianza del servidor: `~/.ssh/authorized_keys`
3. Restricción de permisos del archivo: `chmod 600 ~/.ssh/authorized_keys`

## 🛡️ FASE 2: Hardening del Demonio SSH
Una vez verificada la conexión criptográfica, se procedió a cerrar la puerta a las contraseñas tradicionales editando el archivo `/etc/ssh/sshd_config`.

Se modificó la directiva principal a:
```text
PasswordAuthentication no
