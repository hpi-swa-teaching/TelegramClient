<p align="center"><img width="300" height="300" src="assets/logo.png" alt="TelegramClient-Logo"></p>

<h1 align="center" style=font-size:200px>TelegramClient</h1>

<p align="center">
    <a href="https://github.com/hpi-swa-teaching/TelegramClient/commits/" title="Last Commit"><img src="https://img.shields.io/github/last-commit/hpi-swa-teaching/TelegramClient?style=flat"></a>
    <a href="https://github.com/hpi-swa-teaching/TelegramClient/issues" title="Open Issues"><img src="https://img.shields.io/github/issues/hpi-swa-teaching/TelegramClient"></a>
        <a href="https://github.com/hpi-swa-teaching/TelegramClient/actions?query=workflow%3ACI" title="Build Status - Master"><img src="https://img.shields.io/github/workflow/status/hpi-swa-teaching/telegramclient/CI/master?color=dwa&label=master&logo=dwa&logoColor=daw"></a>
    <a href="https://github.com/hpi-swa-teaching/TelegramClient/actions?query=workflow%3ACI" title="Build Status - Develop"><img src="https://img.shields.io/github/workflow/status/hpi-swa-teaching/telegramclient/CI/master?color=dwa&label=develop&logo=dwa&logoColor=daw"></a>
    <img alt="Coveralls github branch" src="https://img.shields.io/coveralls/github/hpi-swa-teaching/TelegramClient/master?label=coverage%20-%20master">
    <img alt="Coveralls github branch" src="https://img.shields.io/coveralls/github/hpi-swa-teaching/TelegramClient/develop?label=coverage%20-%20develop">
    <a href="./LICENSE" title="License"><img src="https://img.shields.io/github/license/hpi-swa-teaching/TelegramClient"></a>
    
## Overview
TelegramClient is a **Squeak-Client** for the widely used Telegram-Messenger. It aims to provide features such as Authentication, Contacts, Message and Media sending and a minimal UI as well as as a Zen-mode and receiving messages in the background.

*This Project is part of the "Softwaretechnik" Lecture 2020 at the Hasso Plattner Institute.*

## Installation
Make sure you have the current version of Squeak installed.
* Step 1: Install the Squeak Git Client and clone this repository. For the trunk clone develop, for the latest stable release choose master.
* Step 2: Install the Squeak FFI Workload. To do so, open the Workspace in Squeak and execute the following command:   `(Installer repository: 'http://source.squeak.org/FFI')
install: 'FFI-Pools';
install: 'FFI-Kernel'.`
* Step 3: Downloading the required native TDLib Binaries for your system: This should happen automatically. Alternatively you can download them here: On Windows you have to download [tdlib_windows.zip](https://github.com/hpi-swa-teaching/tdlib). For [Ubuntu 18 lts](https://github.com/hpi-swa-teaching/tdlib/actions?query=workflow%3A%22Tdlib+Ubuntu+Build%22) select the latest successful run of the pipeline and download the single artifact produced by the respective pipeline. We currently don't support MacOS yet, to find out more about this check our [wiki](https://github.com/hpi-swa-teaching/TelegramClient/wiki/Difficulties-and-Tips).
* Step 4 (Manual download only): Place the unzipped binaries inside of your squeak image inside the 'Resource' folder.
* Step 5 (Windows only): Install the [Visual C++ Redistributable for Visual Studio 2015, 2017 and 2019](https://aka.ms/vs/16/release/vc_redist.x64.exe)

Alternatively, check our [release page](https://github.com/hpi-swa-teaching/TelegramClient/releases) for an online installer in the form of a sar file. In that case you just have to follow steps two and five.
## Running TelegramClient
In a workspace window either execute the command `TCUTelegram newWithTCCCore` or click the Telegram entry in the Apps dropdown menu. The menu is only available if you already started the app once or installed the app via a release sar file.

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

## Resources for following groups
We have developed a [Project-Guide](https://github.com/hpi-swa-teaching/TelegramClient/wiki) in our wiki page, which contains the most important information to continue developing the TelegramClient. Feel free to add new information to the wiki.

## Our Group
Group 13 of the 2020 SWT I module incuded [Rohan Sawahn](https://github.com/rohansaw), [Jonas Schmidt](https://github.com/schmidtjonas), [Frederik Wollny](https://github.com/Freddy200), [Stefan Spangenberg](https://github.com/sspangenberg), [Lukas Laskowski](https://github.com/lasklu) and [Niklas Schilli](https://github.com/Mrnikbobjeff). Feel free to add your names to the list!
