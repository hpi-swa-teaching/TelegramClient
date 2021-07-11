emojis
mockEmojiString
	
	"A string containing 'A:rainbow flag::face with tears of joy:C:transgender flag'"
	"We would love to display them here, but Squeak does not support emojis"
	^ self mockEmojiStringValues
		inject: String new
		into: [:emojiString :value |
			emojiString , (Character value: value)
		]