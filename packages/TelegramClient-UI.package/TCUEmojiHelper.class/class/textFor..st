utility
textFor: aString

	"we are using value: 1 here as the method 'startOfHeader' isn't available on 5.2"
	^ Text
		string: (Character value: 1) asString
		attribute: (TextAnchor new anchoredMorph: (self formFor: aString))