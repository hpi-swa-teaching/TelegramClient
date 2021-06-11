private
hasTrailingWhitespaces: aString

	^ (self isLineWithOnlyTabsAndSpaces: aString) not and: [aString last = Character space or: [aString last = Character tab]]