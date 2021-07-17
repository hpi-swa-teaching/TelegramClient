unicode matching
addEmojiCodePoint: aHexString to: aCharAndEmojisCollection
	
	(aCharAndEmojisCollection isEmpty or: [aCharAndEmojisCollection last isCharacter]) ifTrue: [
			aCharAndEmojisCollection add: OrderedCollection new
		].
	aCharAndEmojisCollection last add: aHexString.
	^ aCharAndEmojisCollection