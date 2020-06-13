tests
isLineWithOnlyTabsAndSpaces: aString

	^ aString isEmpty not and: [aString allSatisfy: [:aChar | aChar = Character space or: [aChar = Character tab]]]