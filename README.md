<p align="center"><img width=50% src="https://i.ibb.co/VHG620F/Telegram-unterschrift.png" alt="TelegramClient Logo"></p>


<p align="center">
    <a href="https://github.com/hpi-swa-teaching/TelegramClient/commits/" title="Last Commit"><img src="https://img.shields.io/github/last-commit/hpi-swa-teaching/TelegramClient?style=flat"></a>
    <a href="https://github.com/hpi-swa-teaching/TelegramClient/issues" title="Open Issues"><img src="https://img.shields.io/github/issues/hpi-swa-teaching/TelegramClient"></a>
    <a href="https://github.com/hpi-swa-teaching/TelegramClient/actions" title="Build Status"><img src="https://github.com/hpi-swa-teaching/TelegramClient/workflows/CI/badge.svg?branch=develop"></a>
   <a href="https://github.com/hpi-swa-teaching/TelegramClient/stargazers" title="Stars"><img src="https://img.shields.io/github/stars/hpi-swa-teaching/TelegramClient"></a>
    <a href="./LICENSE" title="License"><img src="https://img.shields.io/github/license/hpi-swa-teaching/TelegramClient"></a>
</p>

## Overview
TeleSqueak is a **Squeak-Client** for the widely used Telegram-Messenger. It aims to provide features such as Authentication, Contacts, Message and Media sending and a minimal, clean UI as well as as a Zen-mode and receiving messages in the background.

*This Project is part of the "Softwaretechnik" Lecture 2020 at the Hasso Plattner Institute.*

## CI Status
Develop: ![CI](https://github.com/hpi-swa-teaching/TelegramClient/workflows/CI/badge.svg?branch=develop)
Master(Release): ![CI](https://github.com/hpi-swa-teaching/TelegramClient/workflows/CI/badge.svg?branch=master)

## Installation
Make sure you have the current version of Squeak installed.
* Step 1: Install the Squeak Git Client
* Step 2: Install the Squeak FFI Workload. To do so, open the Workspace in Squeak and execute the following command:   `(Installer repository: 'http://source.squeak.org/FFI')
install: 'FFI-Pools';
install: 'FFI-Kernel'.`
* Step 3: Download the required native Binaries for your system. [Windows](https://github.com/hpi-swa-teaching/tdlib/actions?query=workflow%3A%22Windows+CI%22), [Mac](https://github.com/hpi-swa-teaching/tdlib/actions?query=workflow%3A%22Tdlib+Max+x64+Build%22), [Ubuntu 18 lts](https://github.com/hpi-swa-teaching/tdlib/actions?query=workflow%3A%22Tdlib+Ubuntu+Build%22). Select the latest successful run of the pipeline and download the single artifact produced by the respective pipeline.
* Step 4: Place the unzipped binaries inside of your squeak image. On Windows, place them inside the Win32 folder, on Linux in "Contents/Linux-x86_64/lib/squeak/\<versionnumber>/" and on Mac place them inside the resources folder.
* Step 5 (Windows only): Install the [Visual C++ Redistributable for Visual Studio 2015, 2017 and 2019](https://aka.ms/vs/16/release/vc_redist.x64.exe)

## Running TelegramClient
In a workspace window either execute the command `TCUApp newWithTCCApp` or click the TelegramClient entry in the Apps dropdown menu.

## Building Tdlib
Tdlib build instructions are available on their Github page. They also have a wonderful build instruction generator available which was the basis for our workflow . [Check it out here.](https://tdlib.github.io/td/build.html) Alternatively use the [Github Pipelines](https://github.com/hpi-swa-teaching/tdlib) we setup and modify them according to newer build instructions for successive tdlib versions. Currently we release at Tag 1.6.0.

## Notes on Tdlib
The TelegramClient is build on the TelegramDatabseLibrary which provides access to Telegram API via a JSON-Interface.
We include Tdlib in our project and can access it with the Squeak FFI, in turn allowing us to access the Telegram API via JSON-Interface.

## Resources for following groups
We have a [Discord](https://discord.gg/craraGh) server setup with a Github Webhook, notifying us on important changes to the repository. Most exchanges happened in there, making it a valueable resource for successive groups.
