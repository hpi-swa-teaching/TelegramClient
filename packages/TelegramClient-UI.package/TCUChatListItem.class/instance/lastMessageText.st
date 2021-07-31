accessing
lastMessageText

		^ TCUEmojiHelper embedEmojisInto:
				(self chat lastMessage condensedIntoOneLine
					truncateWithElipsisTo: self class defaultMessagePreviewLength)