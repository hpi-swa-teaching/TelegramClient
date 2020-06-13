tests
isEmptyLine: aString

	aString isEmpty allSatisfy: [:aChar | aChar = Character space or: [aChar = Character tab]] not