utility
enrichString: aString
	
	| charCodes codePoints |
	charCodes := OrderedCollection new.
	aString do: [:c | charCodes add: c charCode].
	codePoints := TCUEmojiHelper decodeIntegers: charCodes.
	^ codePoints inject: '' into: [:all :p | all , ' ' , p asString]