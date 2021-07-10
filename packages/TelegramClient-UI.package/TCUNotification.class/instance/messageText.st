drawing
messageText

	^ TCUEmojiHelper
		embedEmojisInto: ((self message asText withNoLineLongerThan: self class defaultLineLength)
			truncateWithElipsisTo: self class defaultMessageLength)