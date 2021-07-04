emojis
mockEmojiString
	
	"A string containing 'A:rainbow flag:B:face with tears of joy:C:transgender flag'"
	"We would love to display them here, but Squeak does not support emojis"
	^ self mockEmojiStringValues inject: '' into: [:all :value |
			all , (Character value: value)
		]
	