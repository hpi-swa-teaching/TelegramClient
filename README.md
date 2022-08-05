<p align="center"><img width="300" height="300" src="assets/logo.png" alt="TelegramClient-Logo"></p>

<h1 align="center" style=font-size:200px>TelegramClient</h1>

<p align="center">
    <a href="https://github.com/hpi-swa-teaching/TelegramClient/commits/" title="Last Commit"><img src="https://img.shields.io/github/last-commit/hpi-swa-teaching/TelegramClient?style=flat"></a>
    <a href="https://github.com/hpi-swa-teaching/TelegramClient/issues" title="Open Issues"><img src="https://img.shields.io/github/issues/hpi-swa-teaching/TelegramClient"></a>
    <a href="https://github.com/hpi-swa-teaching/TelegramClient/actions?query=workflow%3ACI+branch%3Amaster" title="Build Status - Master"><img src="https://img.shields.io/github/workflow/status/hpi-swa-teaching/TelegramClient/CI/master?label=master"></a>
    <a href="https://github.com/hpi-swa-teaching/TelegramClient/actions?query=workflow%3ACI+branch%3Adevelop" title="Build Status - Develop"><img src="https://img.shields.io/github/workflow/status/hpi-swa-teaching/telegramclient/CI/develop?label=develop"></a>
    <img alt="Coveralls github branch" src="https://img.shields.io/coveralls/github/hpi-swa-teaching/TelegramClient/master?label=coverage%20-%20master">
    <img alt="Coveralls github branch" src="https://img.shields.io/coveralls/github/hpi-swa-teaching/TelegramClient/develop?label=coverage%20-%20develop">
    <a href="./LICENSE" title="License"><img src="https://img.shields.io/github/license/hpi-swa-teaching/TelegramClient"></a>

## Overview

TelegramClient is a **Squeak-Client** for the widely used Telegram-Messenger. It aims to provide features such as Authentication, Contacts, Message and Media sending and a minimal UI as well as as a Zen-mode and receiving messages in the background.

*This Project is part of the "Softwaretechnik" Lecture 2020 at the Hasso Plattner Institute.*

## Features

<table>
  <thead>
    <tr>
      <th>✨</th>
      <th>Feature</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>🔓</td>
      <td>Authenticate yourself in your Telegram-Account</td>
    </tr>
    <tr>
      <td>✉️</td>
      <td>Send messages to other users</td>
    </tr>
    <tr>
      <td>💬</td>
      <td>Display open Chats in a List</td>
    </tr>
    <tr>
      <td>📫</td>
      <td>Receive messages</td>
    </tr>
    <tr>
      <td>🆕</td>
      <td>Create new chats</td>
    </tr>
    <tr>
      <td>🔔</td>
      <td>Receive push notifications</td>
    </tr>
    <tr>
      <td>🌍</td>
      <td>Start Telegram via WorldMenu</td>
    </tr>
    <tr>
      <td>🚶</td>
      <td>Logout</td>
    </tr>
    <tr>
      <td>😎</td>
      <td>Display Emojis</td>
    </tr>
    <tr>
      <td>🖼</td>
      <td>Display Images</td>
    </tr>
    <tr>
      <td>ℹ</td>
      <td>Show group description and members</td>
    </tr>
    <tr>
      <td>↩</td>
      <td>Reference an old message</td>
    </tr>
    <tr>
      <td>🖼</td>
      <td>Show profile pictures</td>
    </tr>
  </tbody>
</table>

## Running TelegramClient

We currently only support Squeak 5.3.

### Option 1 (online installation)

Open a Workspace and evaluate the following command in it:
```smalltalk
Metacello new
	baseline: 'TelegramClient';
	repository: 'github://hpi-swa-teaching/TelegramClient/packages';
	load.
```

### Option 2 (offline installation)

1. Install the following prerequisites:
   1. **Last compatible FFI version.** For Squeak version 5.3 use `Metacello new configuration: 'FFI'; load.` to install it.
   2. **JSON** package from [SqueakSource](http://www.squeaksource.com/JSON.html).
   3. **Animations** package [GitHub](https://github.com/hpi-swa/animations/).
   4. **MTF** package from [GitHub](https://github.com/hpi-swa-teaching/Morphic-Testing-Framework)

2. Check our [release page](https://github.com/hpi-swa-teaching/TelegramClient/releases) for an online installer in the form of a SAR file. Install this SAR file in your Squeak image.

3. Click the Telegram entry in the Apps WorldMenu or execute the command `TCUTelegram newWithTCCCore`. The menu is only available if you already started the app once or installed the app via a release SAR file.

For further information or manual setup take a look in our [setup
guide](https://github.com/hpi-swa-teaching/TelegramClient/wiki/Setup-Guide).

## Development

### Wiki

The [wiki](https://github.com/hpi-swa-teaching/TelegramClient/wiki) has a lot of useful information for continuing the development of this project. Feel free to add new information to the wiki.

### Releasing

Pre-Releases are created automatically whenever a commit is added to the develop-branch. Releases should created before each client meeting and can simply be done by merging develop into master.

## Our Group

Group 11 of the 2022 SWT I module included [Richard Wohlbold](https://github.com/rgwohlbold), [Til Bergmann](https://github.com/Till-B), [Antony Kamp](https://github.com/antonykamp), [Lucas Reisener](https://github.com/LucasDerReisende), [Erik Kohlros](https://github.com/kohlros), and [Jacob Schäfer](https://github.com/jacob271).

Group 2 of the 2021 SWT I module included [Romeo Sommerfeld](https://github.com/rsommerfeld), [Raphael Kunert](https://github.com/Storyxx), [Jannis Berndt](https://github.com/jb3rndt), [Philipp Keese](https://github.com/phkeese), [Tom Richter](https://github.com/tom-richter), and [Paul Ermler](https://github.com/permler).

Group 13 of the 2020 SWT I module included [Rohan Sawahn](https://github.com/rohansaw), [Jonas Schmidt](https://github.com/schmidtjonas), [Frederik Wollny](https://github.com/Freddy200), [Stefan Spangenberg](https://github.com/sspangenberg), [Lukas Laskowski](https://github.com/lasklu), and [Niklas Schilli](https://github.com/Mrnikbobjeff). Feel free to add your names to the list.

## Acknowledgements

This project uses assets from https://openmoji.org/ for Emoji support. These are downloaded when the client starts for the first time and not hosted in this repository.
Each file is resized before being displayed and filenames are stripped of certain Unicode units after download. The contents of the files is not changed.
OpenMoji is published under the Creative Commons Share Alike License 4.0 [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/#). Their project is also hosted on [GitHub](https://github.com/hfg-gmuend/openmoji).
