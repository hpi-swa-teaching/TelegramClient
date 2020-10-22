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
  </tbody>
</table>

## Running TelegramClient

We currently only support Squeak 5.3.

1. Install the following prerequisites:
   1. **Last compatible FFI version.** For Squeak version 5.3 use `Metacello new configuration: 'FFI'; load.` to install it.
   2. **JSON** package from [SqueakSource](http://www.squeaksource.com/JSON.html).
   3. **Animations** package [GitHub](https://github.com/hpi-swa/animations/).

2. Check our [release page](https://github.com/hpi-swa-teaching/TelegramClient/releases) for an online installer in the form of a sar file. Install this sar file in your Squeak image.

3. Click the Telegram entry in the Apps WorldMenu or execute the command `TCUTelegram newWithTCCCore`. The menu is only available if you already started the app once or installed the app via a release sar file.

For further information or manual setup take a look in our [setup
guide](https://github.com/hpi-swa-teaching/TelegramClient/wiki/Setup-Guide).

## Development

### Wiki

The [wiki](https://github.com/hpi-swa-teaching/TelegramClient/wiki) has a lot of useful information for continuing the development of this project. Feel free to add new information to the wiki.

### Releasing

Pre-Releases are created automatically whenever a commit is added to the develop-branch. Releases should created before each client meeting and can simply be done by merging develop into master.

## Our Group

Group 13 of the 2020 SWT I module included [Rohan Sawahn](https://github.com/rohansaw), [Jonas Schmidt](https://github.com/schmidtjonas), [Frederik Wollny](https://github.com/Freddy200), [Stefan Spangenberg](https://github.com/sspangenberg), [Lukas Laskowski](https://github.com/lasklu) and [Niklas Schilli](https://github.com/Mrnikbobjeff). Feel free to add your names to the list.
