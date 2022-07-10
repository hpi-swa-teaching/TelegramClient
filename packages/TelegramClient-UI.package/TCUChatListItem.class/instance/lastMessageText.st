accessing
lastMessageText

		^ TCUEmojiHelper embedEmojisInto:
				(self chat lastMessageSnippet condensedIntoOneLine
					truncateWithElipsisTo: self class defaultMessagePreviewLength)