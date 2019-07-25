# TelegramClient [![Build Status](https://travis-ci.org/hpi-swa-teaching/TelegramClient.svg?branch=master)](https://travis-ci.org/hpi-swa-teaching/TelegramClient) Group 14

Installationsanleitung - Squeak Telegram Client

- TDLib Library neu kompilieren/ laden
   
   Anleitung unter: https://github.com/tdlib/td

- TDLib Library hinzufügen

   Windows (64 Bit):
    tdjson.dll in den Ordner …\Contents\Win64\ legen.

   Linux (Ubuntu):
    libtdjson.so in den Ordner …\Contents\Linux\lib\squeak\<versionsnummer>\ legen.

   Mac:
    libtdjson.so in den selben Ordner wie das Squeak Image legen.

- Telegram Client starten

  Im Workspace Telegram debugNew ausführen.
  
Aktuelle Features

- Telegram- Login & Logon (Nummer hinzufügen & Aktivierungscode angeben)
- Chat-Übersicht in UI (aktuell noch mittels ToolBuilder)
- Nachrichten erhalten und senden
- neuen Chat erstellen mit vorhandenen Kontakten
- neuen Gruppenchat erstellen mit vorhandenen Kontakten

