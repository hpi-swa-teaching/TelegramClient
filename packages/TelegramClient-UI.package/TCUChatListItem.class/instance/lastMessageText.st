accessing
lastMessageText

		^ TCUEmojiHelper embedEmojisInto:
				(self chat lastMessageText condensedIntoOneLine
					truncateWithElipsisTo: self class defaultMessagePreviewLength)