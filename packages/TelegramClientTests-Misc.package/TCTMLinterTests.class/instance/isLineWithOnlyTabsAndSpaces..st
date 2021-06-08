private
isLineWithOnlyTabsAndSpaces: aString

	^ aString isEmpty or: [aString allSatisfy: [:aChar | aChar = Character space or: [aChar = Character tab]]]