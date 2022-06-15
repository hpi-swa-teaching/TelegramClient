testing
testEmojisArePresent

	| emojiDirectory |

	emojiDirectory := FileDirectory default directoryNamed: TCUEmojiHelper defaultFolderName.

	self assert: TCUEmojiHelper areEmojisPresent.
	self assert: emojiDirectory hasFiles.