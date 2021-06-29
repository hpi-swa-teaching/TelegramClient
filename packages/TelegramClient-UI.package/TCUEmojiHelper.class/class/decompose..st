utility
decompose: aString
	
	| charCodes |
	charCodes := OrderedCollection new.
	aString do: [:c | charCodes add: c charCode].
	^ charCodes