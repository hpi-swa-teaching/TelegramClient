# TelegramClient
# CI Status
Develop: ![CI](https://github.com/hpi-swa-teaching/TelegramClient/workflows/CI/badge.svg?branch=develop)
Master(Release): ![CI](https://github.com/hpi-swa-teaching/TelegramClient/workflows/CI/badge.svg?branch=master)

TelegramClient is a **Squeak-Client** for the widely used Telegram-Messenger. It provides features such as Authentication, Contacts, Message and Media sending and a minimal, clean UI. We also provide features such as a Zen-mode and receiving messages in the background.

*This Project is part of the "Softwaretechnik" Lecture 2020 at the Hasso Plattner Institute.*

# Installation
Make sure you have the current version of Squeak installed.

# Building
We will provide binaries for different operating systems and a full installation instruction here soon.

# Notes on TDLIB
The TelegramClient is build on the TelegramDatabseLibrary which provides access to Telegram API via a JSON-Interface.
We include TDLIB library in our project and can access the C-Library via FFI from Squeak, giving us the possibility to access the Telegram API via JSON-Interface.

