unicode matching
splitCharsAndEmojisIn: aString

	^ aString
		inject: OrderedCollection new
		into: [ :charsAndEmojis :char |
			self add: char to: charsAndEmojis.
		]