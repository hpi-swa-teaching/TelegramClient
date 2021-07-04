as yet unclassified
testEmojisArePresent

	| fileDirectory |
	
	fileDirectory := FileDirectory default directoryNamed: TCUEmojiHelper defaultFolderName.
	
	self assert: true equals: TCUEmojiHelper areEmojisPresent.
	self assert: true equals: fileDirectory hasFiles.