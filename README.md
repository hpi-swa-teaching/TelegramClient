# TelegramClient
# CI Status
Develop: ![CI](https://github.com/hpi-swa-teaching/TelegramClient/workflows/CI/badge.svg?branch=develop)
Master(Release): ![CI](https://github.com/hpi-swa-teaching/TelegramClient/workflows/CI/badge.svg?branch=master)

TelegramClient is a **Squeak-Client** for the widely used Telegram-Messenger. It provides features such as Authentication, Contacts, Message and Media sending and a minimal, clean UI. We also provide features such as a Zen-mode and receiving messages in the background.

*This Project is part of the "Softwaretechnik" Lecture 2020 at the Hasso Plattner Institute.*

# Installation
Make sure you have the current version of Squeak installed.
* Step 1: Install the Squeak Git Client
* Step 2: Install the Squeak FFI Workload. To do so, open the Workspace in Squeak and execute the following command:   `(Installer repository: 'http://source.squeak.org/FFI')
install: 'FFI-Pools';
install: 'FFI-Kernel'.`
* Step 3: Download the required native Binaries for your system. [Windows](https://drive.google.com/open?id=14tOoIfxioIe8bn2kPxPKmCk_Eg0tSYiJ), [Mac](https://drive.google.com/open?id=1H2l_V6zkIx4t_SKQKL3MmdtvOV2haFjV), [Ubuntu 18 lts](https://drive.google.com/open?id=1CpSPcB-5MPA95fEWI-X5MxbUEZUcU3g2).
* Step 4: Place the unzipped binaries inside of your squeak image. On Windows, place them inside the Win32 folder, on Linux in "Contents/Linux-x86_64/lib/squeak/\<versionnumber>/" and on Mac place them inside the resources folder.
# Running TelegramClient
In a workspace window execute the command "TCApp new"
# Building
Tdlib build instructions are available on their Github page. They also have a wonderful build instruction generator available which was the basis for our workflow . [Check it out here.](https://tdlib.github.io/td/build.html)

# Notes on TDLIB
The TelegramClient is build on the TelegramDatabseLibrary which provides access to Telegram API via a JSON-Interface.
We include TDLIB library in our project and can access the C-Library via FFI from Squeak, giving us the possibility to access the Telegram API via JSON-Interface.

