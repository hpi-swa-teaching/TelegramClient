drawing
lastMessage

		^ TCUEmojiHelper embedEmojisInto:
			(self chat lastMessage condensedIntoOneLine truncateWithElipsisTo: self class defaultMessagePreviewLength)