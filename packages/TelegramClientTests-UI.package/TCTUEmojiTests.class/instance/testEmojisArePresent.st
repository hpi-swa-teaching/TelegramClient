testing
testEmojisArePresent

	| fileDirectory result |
	
	fileDirectory := FileDirectory default directoryNamed: TCUEmojiHelper defaultFolderName.
	result := TCUEmojiHelper areEmojisPresent.
	
	self assert: true equals: result.
	self assert: true equals: fileDirectory hasFiles.