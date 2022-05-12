utility
textFor: aString

	^ Text
		string: (Character startOfHeader) asString
		attribute: (TextAnchor new anchoredMorph: (self formFor: aString))